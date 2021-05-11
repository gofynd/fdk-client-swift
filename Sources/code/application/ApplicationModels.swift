    import Foundation
    public extension ApplicationClient {
        
        
        /*
            Model: ProductListingActionPage
            Used By: Catalog
        */
        class ProductListingActionPage: Codable {
            
            public var params: [String: Any]?
            
            public var query: [String: Any]?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case params = "params"
                
                case query = "query"
                
                case type = "type"
                
            }

            public init(params: [String: Any]?, query: [String: Any]?, type: String?) {
                
                self.params = params
                
                self.query = query
                
                self.type = type
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    params = try container.decode([String: Any].self, forKey: .params)
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
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(params, forKey: .params)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: ProductListingAction
            Used By: Catalog
        */
        class ProductListingAction: Codable {
            
            public var page: ProductListingActionPage?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case type = "type"
                
            }

            public init(page: ProductListingActionPage?, type: String?) {
                
                self.page = page
                
                self.type = type
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    page = try container.decode(ProductListingActionPage.self, forKey: .page)
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
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: Media
            Used By: Catalog
        */
        class Media: Codable {
            
            public var url: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case type = "type"
                
            }

            public init(type: String?, url: String?) {
                
                self.url = url
                
                self.type = type
                
            }

            required public init(from decoder: Decoder) throws {
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: ProductBrand
            Used By: Catalog
        */
        class ProductBrand: Codable {
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var logo: Media?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case action = "action"
                
                case logo = "logo"
                
                case uid = "uid"
                
            }

            public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.action = action
                
                self.logo = logo
                
                self.uid = uid
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: ProductDetailAttribute
            Used By: Catalog
        */
        class ProductDetailAttribute: Codable {
            
            public var value: String?
            
            public var key: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case key = "key"
                
                case type = "type"
                
            }

            public init(key: String?, type: String?, value: String?) {
                
                self.value = value
                
                self.key = key
                
                self.type = type
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
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
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: ProductDetailGroupedAttribute
            Used By: Catalog
        */
        class ProductDetailGroupedAttribute: Codable {
            
            public var title: String?
            
            public var details: [ProductDetailAttribute]?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case details = "details"
                
            }

            public init(details: [ProductDetailAttribute]?, title: String?) {
                
                self.title = title
                
                self.details = details
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    details = try container.decode([ProductDetailAttribute].self, forKey: .details)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(details, forKey: .details)
                
            }
            
        }
        
        /*
            Model: ProductDetail
            Used By: Catalog
        */
        class ProductDetail: Codable {
            
            public var name: String?
            
            public var type: String?
            
            public var ratingCount: Int?
            
            public var brand: ProductBrand?
            
            public var attributes: [String: Any]?
            
            public var uid: Int?
            
            public var teaserTag: String?
            
            public var medias: [Media]?
            
            public var tryouts: [String]?
            
            public var color: String?
            
            public var categories: [ProductBrand]?
            
            public var highlights: [String]?
            
            public var description: String?
            
            public var itemCode: String?
            
            public var productOnlineDate: String?
            
            public var similars: [String]?
            
            public var itemType: String?
            
            public var shortDescription: String?
            
            public var hasVariant: Bool?
            
            public var slug: String
            
            public var imageNature: String?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var rating: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case type = "type"
                
                case ratingCount = "rating_count"
                
                case brand = "brand"
                
                case attributes = "attributes"
                
                case uid = "uid"
                
                case teaserTag = "teaser_tag"
                
                case medias = "medias"
                
                case tryouts = "tryouts"
                
                case color = "color"
                
                case categories = "categories"
                
                case highlights = "highlights"
                
                case description = "description"
                
                case itemCode = "item_code"
                
                case productOnlineDate = "product_online_date"
                
                case similars = "similars"
                
                case itemType = "item_type"
                
                case shortDescription = "short_description"
                
                case hasVariant = "has_variant"
                
                case slug = "slug"
                
                case imageNature = "image_nature"
                
                case groupedAttributes = "grouped_attributes"
                
                case rating = "rating"
                
            }

            public init(attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?) {
                
                self.name = name
                
                self.type = type
                
                self.ratingCount = ratingCount
                
                self.brand = brand
                
                self.attributes = attributes
                
                self.uid = uid
                
                self.teaserTag = teaserTag
                
                self.medias = medias
                
                self.tryouts = tryouts
                
                self.color = color
                
                self.categories = categories
                
                self.highlights = highlights
                
                self.description = description
                
                self.itemCode = itemCode
                
                self.productOnlineDate = productOnlineDate
                
                self.similars = similars
                
                self.itemType = itemType
                
                self.shortDescription = shortDescription
                
                self.hasVariant = hasVariant
                
                self.slug = slug
                
                self.imageNature = imageNature
                
                self.groupedAttributes = groupedAttributes
                
                self.rating = rating
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
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
                    tryouts = try container.decode([String].self, forKey: .tryouts)
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
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
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
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
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
                
                
                
                do {
                    similars = try container.decode([String].self, forKey: .similars)
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
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
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
                    rating = try container.decode(Double.self, forKey: .rating)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
            }
            
        }
        
        /*
            Model: ErrorResponse
            Used By: Catalog
        */
        class ErrorResponse: Codable {
            
            public var error: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
            }

            public init(error: String?) {
                
                self.error = error
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: ProductSizeStores
            Used By: Catalog
        */
        class ProductSizeStores: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: Price
            Used By: Catalog
        */
        class Price: Codable {
            
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

            public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
                
                self.max = max
                
                self.currencyCode = currencyCode
                
                self.min = min
                
                self.currencySymbol = currencySymbol
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    max = try container.decode(Double.self, forKey: .max)
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
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class ProductListingPrice: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
            Model: ColumnHeader
            Used By: Catalog
        */
        class ColumnHeader: Codable {
            
            public var value: String?
            
            public var convertable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case convertable = "convertable"
                
            }

            public init(convertable: Bool?, value: String?) {
                
                self.value = value
                
                self.convertable = convertable
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    convertable = try container.decode(Bool.self, forKey: .convertable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(convertable, forKey: .convertable)
                
            }
            
        }
        
        /*
            Model: ColumnHeaders
            Used By: Catalog
        */
        class ColumnHeaders: Codable {
            
            public var col5: ColumnHeader?
            
            public var col4: ColumnHeader?
            
            public var col6: ColumnHeader?
            
            public var col1: ColumnHeader?
            
            public var col3: ColumnHeader?
            
            public var col2: ColumnHeader?
            

            public enum CodingKeys: String, CodingKey {
                
                case col5 = "col_5"
                
                case col4 = "col_4"
                
                case col6 = "col_6"
                
                case col1 = "col_1"
                
                case col3 = "col_3"
                
                case col2 = "col_2"
                
            }

            public init(col1: ColumnHeader?, col2: ColumnHeader?, col3: ColumnHeader?, col4: ColumnHeader?, col5: ColumnHeader?, col6: ColumnHeader?) {
                
                self.col5 = col5
                
                self.col4 = col4
                
                self.col6 = col6
                
                self.col1 = col1
                
                self.col3 = col3
                
                self.col2 = col2
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    col5 = try container.decode(ColumnHeader.self, forKey: .col5)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col4 = try container.decode(ColumnHeader.self, forKey: .col4)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col6 = try container.decode(ColumnHeader.self, forKey: .col6)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col1 = try container.decode(ColumnHeader.self, forKey: .col1)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col3 = try container.decode(ColumnHeader.self, forKey: .col3)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col2 = try container.decode(ColumnHeader.self, forKey: .col2)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(col5, forKey: .col5)
                
                try? container.encodeIfPresent(col4, forKey: .col4)
                
                try? container.encodeIfPresent(col6, forKey: .col6)
                
                try? container.encodeIfPresent(col1, forKey: .col1)
                
                try? container.encodeIfPresent(col3, forKey: .col3)
                
                try? container.encodeIfPresent(col2, forKey: .col2)
                
            }
            
        }
        
        /*
            Model: SizeChartValues
            Used By: Catalog
        */
        class SizeChartValues: Codable {
            
            public var col5: String?
            
            public var col4: String?
            
            public var col6: String?
            
            public var col1: String?
            
            public var col3: String?
            
            public var col2: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case col5 = "col_5"
                
                case col4 = "col_4"
                
                case col6 = "col_6"
                
                case col1 = "col_1"
                
                case col3 = "col_3"
                
                case col2 = "col_2"
                
            }

            public init(col1: String?, col2: String?, col3: String?, col4: String?, col5: String?, col6: String?) {
                
                self.col5 = col5
                
                self.col4 = col4
                
                self.col6 = col6
                
                self.col1 = col1
                
                self.col3 = col3
                
                self.col2 = col2
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    col5 = try container.decode(String.self, forKey: .col5)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col4 = try container.decode(String.self, forKey: .col4)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col6 = try container.decode(String.self, forKey: .col6)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col1 = try container.decode(String.self, forKey: .col1)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col3 = try container.decode(String.self, forKey: .col3)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col2 = try container.decode(String.self, forKey: .col2)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(col5, forKey: .col5)
                
                try? container.encodeIfPresent(col4, forKey: .col4)
                
                try? container.encodeIfPresent(col6, forKey: .col6)
                
                try? container.encodeIfPresent(col1, forKey: .col1)
                
                try? container.encodeIfPresent(col3, forKey: .col3)
                
                try? container.encodeIfPresent(col2, forKey: .col2)
                
            }
            
        }
        
        /*
            Model: SizeChart
            Used By: Catalog
        */
        class SizeChart: Codable {
            
            public var description: String?
            
            public var image: String?
            
            public var title: String?
            
            public var headers: ColumnHeaders?
            
            public var unit: String?
            
            public var sizes: [SizeChartValues]?
            
            public var sizeTip: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case image = "image"
                
                case title = "title"
                
                case headers = "headers"
                
                case unit = "unit"
                
                case sizes = "sizes"
                
                case sizeTip = "size_tip"
                
            }

            public init(description: String?, headers: ColumnHeaders?, image: String?, sizes: [SizeChartValues]?, sizeTip: String?, title: String?, unit: String?) {
                
                self.description = description
                
                self.image = image
                
                self.title = title
                
                self.headers = headers
                
                self.unit = unit
                
                self.sizes = sizes
                
                self.sizeTip = sizeTip
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    image = try container.decode(String.self, forKey: .image)
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
                    headers = try container.decode(ColumnHeaders.self, forKey: .headers)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([SizeChartValues].self, forKey: .sizes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeTip = try container.decode(String.self, forKey: .sizeTip)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(image, forKey: .image)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(headers, forKey: .headers)
                
                try? container.encodeIfPresent(unit, forKey: .unit)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(sizeTip, forKey: .sizeTip)
                
            }
            
        }
        
        /*
            Model: ProductSize
            Used By: Catalog
        */
        class ProductSize: Codable {
            
            public var value: String?
            
            public var isAvailable: Bool?
            
            public var quantity: Int?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case isAvailable = "is_available"
                
                case quantity = "quantity"
                
                case display = "display"
                
            }

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.value = value
                
                self.isAvailable = isAvailable
                
                self.quantity = quantity
                
                self.display = display
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
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
                    quantity = try container.decode(Int.self, forKey: .quantity)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
            }
            
        }
        
        /*
            Model: ProductSizes
            Used By: Catalog
        */
        class ProductSizes: Codable {
            
            public var stores: ProductSizeStores?
            
            public var discount: String?
            
            public var price: ProductListingPrice?
            
            public var sizeChart: SizeChart?
            
            public var sellable: Bool?
            
            public var sizes: [ProductSize]?
            

            public enum CodingKeys: String, CodingKey {
                
                case stores = "stores"
                
                case discount = "discount"
                
                case price = "price"
                
                case sizeChart = "size_chart"
                
                case sellable = "sellable"
                
                case sizes = "sizes"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: SizeChart?, stores: ProductSizeStores?) {
                
                self.stores = stores
                
                self.discount = discount
                
                self.price = price
                
                self.sizeChart = sizeChart
                
                self.sellable = sellable
                
                self.sizes = sizes
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    stores = try container.decode(ProductSizeStores.self, forKey: .stores)
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
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeChart = try container.decode(SizeChart.self, forKey: .sizeChart)
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
                    sizes = try container.decode([ProductSize].self, forKey: .sizes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
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
        class Store: Codable {
            
            public var name: String?
            
            public var count: Int?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case count = "count"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.count = count
                
                self.uid = uid
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
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
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: ProductStockPrice
            Used By: Catalog
        */
        class ProductStockPrice: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
            Model: ProductSetDistributionSize
            Used By: Catalog
        */
        class ProductSetDistributionSize: Codable {
            
            public var size: String?
            
            public var pieces: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case size = "size"
                
                case pieces = "pieces"
                
            }

            public init(pieces: Int?, size: String?) {
                
                self.size = size
                
                self.pieces = pieces
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pieces = try container.decode(Int.self, forKey: .pieces)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(pieces, forKey: .pieces)
                
            }
            
        }
        
        /*
            Model: ProductSetDistribution
            Used By: Catalog
        */
        class ProductSetDistribution: Codable {
            
            public var sizes: [ProductSetDistributionSize]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizes = "sizes"
                
            }

            public init(sizes: [ProductSetDistributionSize]?) {
                
                self.sizes = sizes
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sizes = try container.decode([ProductSetDistributionSize].self, forKey: .sizes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
            }
            
        }
        
        /*
            Model: ProductSet
            Used By: Catalog
        */
        class ProductSet: Codable {
            
            public var quantity: Int?
            
            public var sizeDistribution: ProductSetDistribution?
            

            public enum CodingKeys: String, CodingKey {
                
                case quantity = "quantity"
                
                case sizeDistribution = "size_distribution"
                
            }

            public init(quantity: Int?, sizeDistribution: ProductSetDistribution?) {
                
                self.quantity = quantity
                
                self.sizeDistribution = sizeDistribution
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeDistribution = try container.decode(ProductSetDistribution.self, forKey: .sizeDistribution)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
                
            }
            
        }
        
        /*
            Model: Seller
            Used By: Catalog
        */
        class Seller: Codable {
            
            public var name: String?
            
            public var count: Int?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case count = "count"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.count = count
                
                self.uid = uid
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
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
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: ArticleAssignment
            Used By: Catalog
        */
        class ArticleAssignment: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    strategy = try container.decode(String.self, forKey: .strategy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class ProductSizePriceResponse: Codable {
            
            public var store: Store?
            
            public var strategyWiseListing: [[String: Any]]?
            
            public var itemType: String?
            
            public var longLat: [Double]?
            
            public var price: ProductStockPrice?
            
            public var articleId: String?
            
            public var discount: String?
            
            public var quantity: Int?
            
            public var set: ProductSet?
            
            public var seller: Seller?
            
            public var articleAssignment: ArticleAssignment?
            
            public var specialBadge: String?
            
            public var pricePerPrice: ProductStockPrice?
            
            public var sellerCount: Int?
            
            public var pincode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case store = "store"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case itemType = "item_type"
                
                case longLat = "long_lat"
                
                case price = "price"
                
                case articleId = "article_id"
                
                case discount = "discount"
                
                case quantity = "quantity"
                
                case set = "set"
                
                case seller = "seller"
                
                case articleAssignment = "article_assignment"
                
                case specialBadge = "special_badge"
                
                case pricePerPrice = "price_per_price"
                
                case sellerCount = "seller_count"
                
                case pincode = "pincode"
                
            }

            public init(articleAssignment: ArticleAssignment?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, pincode: Int?, price: ProductStockPrice?, pricePerPrice: ProductStockPrice?, quantity: Int?, seller: Seller?, sellerCount: Int?, set: ProductSet?, specialBadge: String?, store: Store?, strategyWiseListing: [[String: Any]]?) {
                
                self.store = store
                
                self.strategyWiseListing = strategyWiseListing
                
                self.itemType = itemType
                
                self.longLat = longLat
                
                self.price = price
                
                self.articleId = articleId
                
                self.discount = discount
                
                self.quantity = quantity
                
                self.set = set
                
                self.seller = seller
                
                self.articleAssignment = articleAssignment
                
                self.specialBadge = specialBadge
                
                self.pricePerPrice = pricePerPrice
                
                self.sellerCount = sellerCount
                
                self.pincode = pincode
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    store = try container.decode(Store.self, forKey: .store)
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
                    itemType = try container.decode(String.self, forKey: .itemType)
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
                    price = try container.decode(ProductStockPrice.self, forKey: .price)
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
                    discount = try container.decode(String.self, forKey: .discount)
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
                    set = try container.decode(ProductSet.self, forKey: .set)
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
                    specialBadge = try container.decode(String.self, forKey: .specialBadge)
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
                
                
                
                do {
                    sellerCount = try container.decode(Int.self, forKey: .sellerCount)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
            }
            
        }
        
        /*
            Model: ProductSizeSellerFilter
            Used By: Catalog
        */
        class ProductSizeSellerFilter: Codable {
            
            public var name: String?
            
            public var value: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case value = "value"
                
                case isSelected = "is_selected"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.name = name
                
                self.value = value
                
                self.isSelected = isSelected
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
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
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class ProductSizeSellersResponse: Codable {
            
            public var sortOn: [ProductSizeSellerFilter]?
            
            public var items: [ProductSizePriceResponse]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case sortOn = "sort_on"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductSizePriceResponse]?, page: Page, sortOn: [ProductSizeSellerFilter]?) {
                
                self.sortOn = sortOn
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sortOn = try container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductSizePriceResponse].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        /*
            Model: AttributeDetail
            Used By: Catalog
        */
        class AttributeDetail: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class ProductsComparisonResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class ProductCompareResponse: Codable {
            
            public var title: String?
            
            public var subtitle: String?
            
            public var items: [ProductDetail]?
            
            public var attributesMetadata: [AttributeDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case subtitle = "subtitle"
                
                case items = "items"
                
                case attributesMetadata = "attributes_metadata"
                
            }

            public init(attributesMetadata: [AttributeDetail]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.title = title
                
                self.subtitle = subtitle
                
                self.items = items
                
                self.attributesMetadata = attributesMetadata
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
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
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
                
            }
            
        }
        
        /*
            Model: ProductFrequentlyComparedSimilarResponse
            Used By: Catalog
        */
        class ProductFrequentlyComparedSimilarResponse: Codable {
            
            public var similars: [ProductCompareResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: [ProductCompareResponse]?) {
                
                self.similars = similars
                
            }

            required public init(from decoder: Decoder) throws {
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
        class ProductSimilarItem: Codable {
            
            public var title: String?
            
            public var subtitle: String?
            
            public var items: [ProductDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case subtitle = "subtitle"
                
                case items = "items"
                
            }

            public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.title = title
                
                self.subtitle = subtitle
                
                self.items = items
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
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
                    items = try container.decode([ProductDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: SimilarProductByTypeResponse
            Used By: Catalog
        */
        class SimilarProductByTypeResponse: Codable {
            
            public var similars: [ProductSimilarItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: [ProductSimilarItem]?) {
                
                self.similars = similars
                
            }

            required public init(from decoder: Decoder) throws {
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
        class ProductVariantItemResponse: Codable {
            
            public var color: String?
            
            public var value: String?
            
            public var colorName: String?
            
            public var slug: String?
            
            public var uid: Int?
            
            public var isAvailable: Bool?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var medias: [Media]?
            

            public enum CodingKeys: String, CodingKey {
                
                case color = "color"
                
                case value = "value"
                
                case colorName = "color_name"
                
                case slug = "slug"
                
                case uid = "uid"
                
                case isAvailable = "is_available"
                
                case name = "name"
                
                case action = "action"
                
                case medias = "medias"
                
            }

            public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
                
                self.color = color
                
                self.value = value
                
                self.colorName = colorName
                
                self.slug = slug
                
                self.uid = uid
                
                self.isAvailable = isAvailable
                
                self.name = name
                
                self.action = action
                
                self.medias = medias
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
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
                    colorName = try container.decode(String.self, forKey: .colorName)
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
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
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
                    medias = try container.decode([Media].self, forKey: .medias)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        class ProductVariantResponse: Codable {
            
            public var header: String?
            
            public var displayType: String?
            
            public var items: [ProductVariantItemResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case header = "header"
                
                case displayType = "display_type"
                
                case items = "items"
                
            }

            public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?) {
                
                self.header = header
                
                self.displayType = displayType
                
                self.items = items
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    header = try container.decode(String.self, forKey: .header)
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
                
                
                
                do {
                    items = try container.decode([ProductVariantItemResponse].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(header, forKey: .header)
                
                try? container.encodeIfPresent(displayType, forKey: .displayType)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: ProductVariantsResponse
            Used By: Catalog
        */
        class ProductVariantsResponse: Codable {
            
            public var variants: [ProductVariantResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case variants = "variants"
                
            }

            public init(variants: [ProductVariantResponse]?) {
                
                self.variants = variants
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: StoreDetail
            Used By: Catalog
        */
        class StoreDetail: Codable {
            
            public var name: String?
            
            public var city: String?
            
            public var code: String?
            
            public var id: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case city = "city"
                
                case code = "code"
                
                case id = "id"
                
            }

            public init(city: String?, code: String?, id: Int?, name: String?) {
                
                self.name = name
                
                self.city = city
                
                self.code = code
                
                self.id = id
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
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
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
            }
            
        }
        
        /*
            Model: CompanyDetail
            Used By: Catalog
        */
        class CompanyDetail: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class ProductStockStatusItem: Codable {
            
            public var store: StoreDetail?
            
            public var price: ProductStockPrice?
            
            public var quantity: Int?
            
            public var identifier: [String: Any]?
            
            public var uid: String?
            
            public var seller: Seller?
            
            public var size: String?
            
            public var company: CompanyDetail?
            
            public var itemId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case store = "store"
                
                case price = "price"
                
                case quantity = "quantity"
                
                case identifier = "identifier"
                
                case uid = "uid"
                
                case seller = "seller"
                
                case size = "size"
                
                case company = "company"
                
                case itemId = "item_id"
                
            }

            public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
                
                self.store = store
                
                self.price = price
                
                self.quantity = quantity
                
                self.identifier = identifier
                
                self.uid = uid
                
                self.seller = seller
                
                self.size = size
                
                self.company = company
                
                self.itemId = itemId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    store = try container.decode(StoreDetail.self, forKey: .store)
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
                    uid = try container.decode(String.self, forKey: .uid)
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
                    size = try container.decode(String.self, forKey: .size)
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
                    itemId = try container.decode(Int.self, forKey: .itemId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
            }
            
        }
        
        /*
            Model: ProductStockStatusResponse
            Used By: Catalog
        */
        class ProductStockStatusResponse: Codable {
            
            public var items: [ProductStockStatusItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [ProductStockStatusItem]?) {
                
                self.items = items
                
            }

            required public init(from decoder: Decoder) throws {
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
        class ProductStockPolling: Codable {
            
            public var items: [ProductStockStatusItem]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductStockStatusItem]?, page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductStockStatusItem].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        class ProductFiltersValue: Codable {
            
            public var selectedMin: Int?
            
            public var display: String
            
            public var value: String?
            
            public var displayFormat: String?
            
            public var currencyCode: String?
            
            public var selectedMax: Int?
            
            public var max: Int?
            
            public var min: Int?
            
            public var isSelected: Bool
            
            public var count: Int?
            
            public var currencySymbol: String?
            
            public var queryFormat: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case selectedMin = "selected_min"
                
                case display = "display"
                
                case value = "value"
                
                case displayFormat = "display_format"
                
                case currencyCode = "currency_code"
                
                case selectedMax = "selected_max"
                
                case max = "max"
                
                case min = "min"
                
                case isSelected = "is_selected"
                
                case count = "count"
                
                case currencySymbol = "currency_symbol"
                
                case queryFormat = "query_format"
                
            }

            public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String?) {
                
                self.selectedMin = selectedMin
                
                self.display = display
                
                self.value = value
                
                self.displayFormat = displayFormat
                
                self.currencyCode = currencyCode
                
                self.selectedMax = selectedMax
                
                self.max = max
                
                self.min = min
                
                self.isSelected = isSelected
                
                self.count = count
                
                self.currencySymbol = currencySymbol
                
                self.queryFormat = queryFormat
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    selectedMin = try container.decode(Int.self, forKey: .selectedMin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayFormat = try container.decode(String.self, forKey: .displayFormat)
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
                    selectedMax = try container.decode(Int.self, forKey: .selectedMax)
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
                
                
                
                do {
                    min = try container.decode(Int.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
            }
            
        }
        
        /*
            Model: ProductFiltersKey
            Used By: Catalog
        */
        class ProductFiltersKey: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
            Model: ProductFilters
            Used By: Catalog
        */
        class ProductFilters: Codable {
            
            public var values: [ProductFiltersValue]
            
            public var key: ProductFiltersKey
            

            public enum CodingKeys: String, CodingKey {
                
                case values = "values"
                
                case key = "key"
                
            }

            public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
                
                self.values = values
                
                self.key = key
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: ProductListingDetail
            Used By: Catalog
        */
        class ProductListingDetail: Codable {
            
            public var name: String?
            
            public var price: ProductListingPrice?
            
            public var type: String?
            
            public var ratingCount: Int?
            
            public var brand: ProductBrand?
            
            public var attributes: [String: Any]?
            
            public var uid: Int?
            
            public var sellable: Bool?
            
            public var teaserTag: String?
            
            public var medias: [Media]?
            
            public var tryouts: [String]?
            
            public var color: String?
            
            public var categories: [ProductBrand]?
            
            public var highlights: [String]?
            
            public var description: String?
            
            public var itemCode: String?
            
            public var productOnlineDate: String?
            
            public var similars: [String]?
            
            public var itemType: String?
            
            public var discount: String?
            
            public var shortDescription: String?
            
            public var hasVariant: Bool?
            
            public var slug: String
            
            public var imageNature: String?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var rating: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case price = "price"
                
                case type = "type"
                
                case ratingCount = "rating_count"
                
                case brand = "brand"
                
                case attributes = "attributes"
                
                case uid = "uid"
                
                case sellable = "sellable"
                
                case teaserTag = "teaser_tag"
                
                case medias = "medias"
                
                case tryouts = "tryouts"
                
                case color = "color"
                
                case categories = "categories"
                
                case highlights = "highlights"
                
                case description = "description"
                
                case itemCode = "item_code"
                
                case productOnlineDate = "product_online_date"
                
                case similars = "similars"
                
                case itemType = "item_type"
                
                case discount = "discount"
                
                case shortDescription = "short_description"
                
                case hasVariant = "has_variant"
                
                case slug = "slug"
                
                case imageNature = "image_nature"
                
                case groupedAttributes = "grouped_attributes"
                
                case rating = "rating"
                
            }

            public init(attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?) {
                
                self.name = name
                
                self.price = price
                
                self.type = type
                
                self.ratingCount = ratingCount
                
                self.brand = brand
                
                self.attributes = attributes
                
                self.uid = uid
                
                self.sellable = sellable
                
                self.teaserTag = teaserTag
                
                self.medias = medias
                
                self.tryouts = tryouts
                
                self.color = color
                
                self.categories = categories
                
                self.highlights = highlights
                
                self.description = description
                
                self.itemCode = itemCode
                
                self.productOnlineDate = productOnlineDate
                
                self.similars = similars
                
                self.itemType = itemType
                
                self.discount = discount
                
                self.shortDescription = shortDescription
                
                self.hasVariant = hasVariant
                
                self.slug = slug
                
                self.imageNature = imageNature
                
                self.groupedAttributes = groupedAttributes
                
                self.rating = rating
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
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
                    type = try container.decode(String.self, forKey: .type)
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
                    uid = try container.decode(Int.self, forKey: .uid)
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
                    tryouts = try container.decode([String].self, forKey: .tryouts)
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
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
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
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
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
                
                
                
                do {
                    similars = try container.decode([String].self, forKey: .similars)
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
                    discount = try container.decode(String.self, forKey: .discount)
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
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
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
                    rating = try container.decode(Double.self, forKey: .rating)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
            }
            
        }
        
        /*
            Model: ProductSortOn
            Used By: Catalog
        */
        class ProductSortOn: Codable {
            
            public var name: String?
            
            public var value: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case value = "value"
                
                case isSelected = "is_selected"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.name = name
                
                self.value = value
                
                self.isSelected = isSelected
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
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
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
            }
            
        }
        
        /*
            Model: ProductListingResponse
            Used By: Catalog
        */
        class ProductListingResponse: Codable {
            
            public var filters: [ProductFilters]?
            
            public var items: [ProductListingDetail]?
            
            public var page: Page
            
            public var sortOn: [ProductSortOn]?
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case items = "items"
                
                case page = "page"
                
                case sortOn = "sort_on"
                
            }

            public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
                
                self.filters = filters
                
                self.items = items
                
                self.page = page
                
                self.sortOn = sortOn
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
            }
            
        }
        
        /*
            Model: ImageUrls
            Used By: Catalog
        */
        class ImageUrls: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    landscape = try container.decode(Media.self, forKey: .landscape)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    portrait = try container.decode(Media.self, forKey: .portrait)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class BrandItem: Codable {
            
            public var discount: String?
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            
            public var slug: String?
            
            public var name: String?
            
            public var departments: [String]?
            
            public var action: ProductListingAction?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case banners = "banners"
                
                case slug = "slug"
                
                case name = "name"
                
                case departments = "departments"
                
                case action = "action"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
                
                self.discount = discount
                
                self.logo = logo
                
                self.uid = uid
                
                self.banners = banners
                
                self.slug = slug
                
                self.name = name
                
                self.departments = departments
                
                self.action = action
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
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
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
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
                    departments = try container.decode([String].self, forKey: .departments)
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
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
            }
            
        }
        
        /*
            Model: BrandListingResponse
            Used By: Catalog
        */
        class BrandListingResponse: Codable {
            
            public var items: [BrandItem]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [BrandItem]?, page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([BrandItem].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
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
        class BrandDetailResponse: Codable {
            
            public var name: String?
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case banners = "banners"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.logo = logo
                
                self.uid = uid
                
                self.banners = banners
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
            }
            
        }
        
        /*
            Model: DepartmentIdentifier
            Used By: Catalog
        */
        class DepartmentIdentifier: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
            Model: ThirdLevelChild
            Used By: Catalog
        */
        class ThirdLevelChild: Codable {
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            
            public var slug: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case banners = "banners"
                
                case slug = "slug"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.banners = banners
                
                self.slug = slug
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
            }
            
        }
        
        /*
            Model: SecondLevelChild
            Used By: Catalog
        */
        class SecondLevelChild: Codable {
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            
            public var slug: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [ThirdLevelChild]?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case banners = "banners"
                
                case slug = "slug"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.banners = banners
                
                self.slug = slug
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
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
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([ThirdLevelChild].self, forKey: .childs)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
            }
            
        }
        
        /*
            Model: Child
            Used By: Catalog
        */
        class Child: Codable {
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            
            public var slug: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [SecondLevelChild]?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case banners = "banners"
                
                case slug = "slug"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.banners = banners
                
                self.slug = slug
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
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
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([SecondLevelChild].self, forKey: .childs)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
            }
            
        }
        
        /*
            Model: CategoryItems
            Used By: Catalog
        */
        class CategoryItems: Codable {
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            
            public var slug: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [Child]?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case banners = "banners"
                
                case slug = "slug"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
                
                self.uid = uid
                
                self.banners = banners
                
                self.slug = slug
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
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
                    childs = try container.decode([Child].self, forKey: .childs)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
            }
            
        }
        
        /*
            Model: DepartmentCategoryTree
            Used By: Catalog
        */
        class DepartmentCategoryTree: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([CategoryItems].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    department = try container.decode(String.self, forKey: .department)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class CategoryListingResponse: Codable {
            
            public var departments: [DepartmentIdentifier]?
            
            public var data: [DepartmentCategoryTree]?
            

            public enum CodingKeys: String, CodingKey {
                
                case departments = "departments"
                
                case data = "data"
                
            }

            public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
                
                self.departments = departments
                
                self.data = data
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([DepartmentCategoryTree].self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class CategoryMetaResponse: Codable {
            
            public var name: String?
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case banners = "banners"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.logo = logo
                
                self.uid = uid
                
                self.banners = banners
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
            }
            
        }
        
        /*
            Model: HomeListingResponse
            Used By: Catalog
        */
        class HomeListingResponse: Codable {
            
            public var message: String?
            
            public var items: [ProductListingDetail]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductListingDetail]?, message: String?, page: Page) {
                
                self.message = message
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        /*
            Model: Department
            Used By: Catalog
        */
        class Department: Codable {
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var slug: String?
            
            public var priorityOrder: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case priorityOrder = "priority_order"
                
                case name = "name"
                
            }

            public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.logo = logo
                
                self.uid = uid
                
                self.slug = slug
                
                self.priorityOrder = priorityOrder
                
                self.name = name
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
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
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
            }
            
        }
        
        /*
            Model: DepartmentResponse
            Used By: Catalog
        */
        class DepartmentResponse: Codable {
            
            public var items: [Department]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [Department]?) {
                
                self.items = items
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: AutocompleteItem
            Used By: Catalog
        */
        class AutocompleteItem: Codable {
            
            public var display: String?
            
            public var action: ProductListingAction?
            
            public var logo: Media?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case action = "action"
                
                case logo = "logo"
                
                case type = "type"
                
            }

            public init(action: ProductListingAction?, display: String?, logo: Media?, type: String?) {
                
                self.display = display
                
                self.action = action
                
                self.logo = logo
                
                self.type = type
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
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
                    logo = try container.decode(Media.self, forKey: .logo)
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
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: AutoCompleteResponse
            Used By: Catalog
        */
        class AutoCompleteResponse: Codable {
            
            public var items: [AutocompleteItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [AutocompleteItem]?) {
                
                self.items = items
                
            }

            required public init(from decoder: Decoder) throws {
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
        class CollectionListingFilterTag: Codable {
            
            public var name: String?
            
            public var isSelected: Bool?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case isSelected = "is_selected"
                
                case display = "display"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.name = name
                
                self.isSelected = isSelected
                
                self.display = display
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterType
            Used By: Catalog
        */
        class CollectionListingFilterType: Codable {
            
            public var name: String?
            
            public var isSelected: Bool?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case isSelected = "is_selected"
                
                case display = "display"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.name = name
                
                self.isSelected = isSelected
                
                self.display = display
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
            }
            
        }
        
        /*
            Model: CollectionListingFilter
            Used By: Catalog
        */
        class CollectionListingFilter: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class GetCollectionDetailNest: Codable {
            
            public var banners: ImageUrls?
            
            public var type: String?
            
            public var isActive: Bool?
            
            public var visibleFacetsKeys: [String]?
            
            public var uid: String?
            
            public var query: [String: Any]?
            
            public var appId: String?
            
            public var schedule: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var allowSort: Bool?
            
            public var allowFacets: Bool?
            
            public var description: String?
            
            public var logo: Media?
            
            public var badge: [String: Any]?
            
            public var cron: [String: Any]?
            
            public var tag: [String]?
            
            public var slug: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case type = "type"
                
                case isActive = "is_active"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case uid = "uid"
                
                case query = "query"
                
                case appId = "app_id"
                
                case schedule = "_schedule"
                
                case meta = "meta"
                
                case allowSort = "allow_sort"
                
                case allowFacets = "allow_facets"
                
                case description = "description"
                
                case logo = "logo"
                
                case badge = "badge"
                
                case cron = "cron"
                
                case tag = "tag"
                
                case slug = "slug"
                
                case name = "name"
                
                case action = "action"
                
            }

            public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.banners = banners
                
                self.type = type
                
                self.isActive = isActive
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.uid = uid
                
                self.query = query
                
                self.appId = appId
                
                self.schedule = schedule
                
                self.meta = meta
                
                self.allowSort = allowSort
                
                self.allowFacets = allowFacets
                
                self.description = description
                
                self.logo = logo
                
                self.badge = badge
                
                self.cron = cron
                
                self.tag = tag
                
                self.slug = slug
                
                self.name = name
                
                self.action = action
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
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
                    uid = try container.decode(String.self, forKey: .uid)
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
                    appId = try container.decode(String.self, forKey: .appId)
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
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
                
                
                
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
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
                    logo = try container.decode(Media.self, forKey: .logo)
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
                    cron = try container.decode([String: Any].self, forKey: .cron)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
            }
            
        }
        
        /*
            Model: GetCollectionListingResponse
            Used By: Catalog
        */
        class GetCollectionListingResponse: Codable {
            
            public var filters: CollectionListingFilter?
            
            public var items: [GetCollectionDetailNest]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page) {
                
                self.filters = filters
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    filters = try container.decode(CollectionListingFilter.self, forKey: .filters)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([GetCollectionDetailNest].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        /*
            Model: CollectionDetailResponse
            Used By: Catalog
        */
        class CollectionDetailResponse: Codable {
            
            public var allowSort: Bool?
            
            public var allowFacets: Bool?
            
            public var description: String?
            
            public var tag: [String]?
            
            public var logo: Media?
            
            public var visibleFacetsKeys: [String]?
            
            public var badge: [String: Any]?
            
            public var banners: ImageUrls?
            
            public var slug: String?
            
            public var query: [String: Any]?
            
            public var type: String?
            
            public var name: String?
            
            public var cron: [String: Any]?
            
            public var isActive: Bool?
            
            public var appId: String?
            
            public var schedule: [String: Any]?
            
            public var meta: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case allowSort = "allow_sort"
                
                case allowFacets = "allow_facets"
                
                case description = "description"
                
                case tag = "tag"
                
                case logo = "logo"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case badge = "badge"
                
                case banners = "banners"
                
                case slug = "slug"
                
                case query = "query"
                
                case type = "type"
                
                case name = "name"
                
                case cron = "cron"
                
                case isActive = "is_active"
                
                case appId = "app_id"
                
                case schedule = "_schedule"
                
                case meta = "meta"
                
            }

            public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.allowSort = allowSort
                
                self.allowFacets = allowFacets
                
                self.description = description
                
                self.tag = tag
                
                self.logo = logo
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.badge = badge
                
                self.banners = banners
                
                self.slug = slug
                
                self.query = query
                
                self.type = type
                
                self.name = name
                
                self.cron = cron
                
                self.isActive = isActive
                
                self.appId = appId
                
                self.schedule = schedule
                
                self.meta = meta
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
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
                    description = try container.decode(String.self, forKey: .description)
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
                    logo = try container.decode(Media.self, forKey: .logo)
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
                    badge = try container.decode([String: Any].self, forKey: .badge)
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
                    slug = try container.decode(String.self, forKey: .slug)
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
                    cron = try container.decode([String: Any].self, forKey: .cron)
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
                    appId = try container.decode(String.self, forKey: .appId)
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
            }
            
        }
        
        /*
            Model: GetFollowListingResponse
            Used By: Catalog
        */
        class GetFollowListingResponse: Codable {
            
            public var items: [ProductListingDetail]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductListingDetail], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([ProductListingDetail].self, forKey: .items)
                
                
                
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
        class FollowPostResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class FollowerCountResponse: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
            }

            required public init(from decoder: Decoder) throws {
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
        class FollowIdsData: Codable {
            
            public var products: [Int]?
            
            public var collections: [Int]?
            
            public var brands: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case products = "products"
                
                case collections = "collections"
                
                case brands = "brands"
                
            }

            public init(brands: [Int]?, collections: [Int]?, products: [Int]?) {
                
                self.products = products
                
                self.collections = collections
                
                self.brands = brands
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    products = try container.decode([Int].self, forKey: .products)
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
                
                
                
                do {
                    brands = try container.decode([Int].self, forKey: .brands)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                try? container.encodeIfPresent(collections, forKey: .collections)
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
            }
            
        }
        
        /*
            Model: FollowIdsResponse
            Used By: Catalog
        */
        class FollowIdsResponse: Codable {
            
            public var data: FollowIdsData?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: FollowIdsData?) {
                
                self.data = data
                
            }

            required public init(from decoder: Decoder) throws {
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
        class LatLong: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class Store1: Codable {
            
            public var address: String?
            
            public var name: String?
            
            public var city: String?
            
            public var latLong: LatLong?
            
            public var storeCode: String?
            
            public var state: String?
            
            public var storeEmail: String?
            
            public var uid: Int?
            
            public var pincode: Int?
            
            public var country: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case name = "name"
                
                case city = "city"
                
                case latLong = "lat_long"
                
                case storeCode = "store_code"
                
                case state = "state"
                
                case storeEmail = "store_email"
                
                case uid = "uid"
                
                case pincode = "pincode"
                
                case country = "country"
                
            }

            public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
                
                self.address = address
                
                self.name = name
                
                self.city = city
                
                self.latLong = latLong
                
                self.storeCode = storeCode
                
                self.state = state
                
                self.storeEmail = storeEmail
                
                self.uid = uid
                
                self.pincode = pincode
                
                self.country = country
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
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
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
            }
            
        }
        
        /*
            Model: StoreListingResponse
            Used By: Catalog
        */
        class StoreListingResponse: Codable {
            
            public var items: [Store1]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [Store1], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([Store1].self, forKey: .items)
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        
        
        /*
            Model: TicketList
            Used By: Lead
        */
        class TicketList: Codable {
            
            public var items: [Ticket]?
            
            public var filters: Filter?
            
            public var page: Page?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case filters = "filters"
                
                case page = "page"
                
            }

            public init(filters: Filter?, items: [Ticket]?, page: Page?) {
                
                self.items = items
                
                self.filters = filters
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([Ticket].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    filters = try container.decode(Filter.self, forKey: .filters)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(Page.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        /*
            Model: Page
            Used By: Lead
        */
        class Page: Codable {
            
            public var itemTotal: Int?
            
            public var nextId: String?
            
            public var hasPrevious: Bool?
            
            public var hasNext: Bool?
            
            public var current: Int?
            
            public var type: String
            
            public var size: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemTotal = "item_total"
                
                case nextId = "next_id"
                
                case hasPrevious = "has_previous"
                
                case hasNext = "has_next"
                
                case current = "current"
                
                case type = "type"
                
                case size = "size"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, size: Int?, type: String) {
                
                self.itemTotal = itemTotal
                
                self.nextId = nextId
                
                self.hasPrevious = hasPrevious
                
                self.hasNext = hasNext
                
                self.current = current
                
                self.type = type
                
                self.size = size
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    current = try container.decode(Int.self, forKey: .current)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                type = try container.decode(String.self, forKey: .type)
                
                
                
                do {
                    size = try container.decode(Int.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
                try? container.encodeIfPresent(nextId, forKey: .nextId)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
            }
            
        }
        
        /*
            Model: TicketHistoryList
            Used By: Lead
        */
        class TicketHistoryList: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    docs = try container.decode([TicketHistory].self, forKey: .docs)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(Int.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pages = try container.decode(Int.self, forKey: .pages)
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
        class CustomFormList: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    docs = try container.decode([CustomForm].self, forKey: .docs)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(Int.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pages = try container.decode(Int.self, forKey: .pages)
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
        class CreateCustomFormPayload: Codable {
            
            public var slug: String
            
            public var title: String
            
            public var inputs: [[String: Any]]
            
            public var description: String?
            
            public var headerImage: String?
            
            public var priority: String
            
            public var shouldNotify: Bool?
            
            public var successMessage: String?
            
            public var pollForAssignment: PollForAssignment?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case title = "title"
                
                case inputs = "inputs"
                
                case description = "description"
                
                case headerImage = "header_image"
                
                case priority = "priority"
                
                case shouldNotify = "should_notify"
                
                case successMessage = "success_message"
                
                case pollForAssignment = "poll_for_assignment"
                
            }

            public init(description: String?, headerImage: String?, inputs: [[String: Any]], pollForAssignment: PollForAssignment?, priority: String, shouldNotify: Bool?, slug: String, successMessage: String?, title: String) {
                
                self.slug = slug
                
                self.title = title
                
                self.inputs = inputs
                
                self.description = description
                
                self.headerImage = headerImage
                
                self.priority = priority
                
                self.shouldNotify = shouldNotify
                
                self.successMessage = successMessage
                
                self.pollForAssignment = pollForAssignment
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                inputs = try container.decode([[String: Any]].self, forKey: .inputs)
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    headerImage = try container.decode(String.self, forKey: .headerImage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                priority = try container.decode(String.self, forKey: .priority)
                
                
                
                do {
                    shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    successMessage = try container.decode(String.self, forKey: .successMessage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(inputs, forKey: .inputs)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(headerImage, forKey: .headerImage)
                
                try? container.encodeIfPresent(priority, forKey: .priority)
                
                try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
                
                try? container.encodeIfPresent(successMessage, forKey: .successMessage)
                
                try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
                
            }
            
        }
        
        /*
            Model: EditCustomFormPayload
            Used By: Lead
        */
        class EditCustomFormPayload: Codable {
            
            public var title: String
            
            public var inputs: [[String: Any]]
            
            public var description: String?
            
            public var priority: String
            
            public var headerImage: String?
            
            public var shouldNotify: Bool?
            
            public var loginRequired: Bool?
            
            public var successMessage: String?
            
            public var pollForAssignment: PollForAssignment?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case inputs = "inputs"
                
                case description = "description"
                
                case priority = "priority"
                
                case headerImage = "header_image"
                
                case shouldNotify = "should_notify"
                
                case loginRequired = "login_required"
                
                case successMessage = "success_message"
                
                case pollForAssignment = "poll_for_assignment"
                
            }

            public init(description: String?, headerImage: String?, inputs: [[String: Any]], loginRequired: Bool?, pollForAssignment: PollForAssignment?, priority: String, shouldNotify: Bool?, successMessage: String?, title: String) {
                
                self.title = title
                
                self.inputs = inputs
                
                self.description = description
                
                self.priority = priority
                
                self.headerImage = headerImage
                
                self.shouldNotify = shouldNotify
                
                self.loginRequired = loginRequired
                
                self.successMessage = successMessage
                
                self.pollForAssignment = pollForAssignment
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                inputs = try container.decode([[String: Any]].self, forKey: .inputs)
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                priority = try container.decode(String.self, forKey: .priority)
                
                
                
                do {
                    headerImage = try container.decode(String.self, forKey: .headerImage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    successMessage = try container.decode(String.self, forKey: .successMessage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(inputs, forKey: .inputs)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(priority, forKey: .priority)
                
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
        class EditTicketPayload: Codable {
            
            public var content: TicketContent?
            
            public var category: String?
            
            public var subCategory: String?
            
            public var source: String?
            
            public var status: String?
            
            public var priority: String?
            
            public var assignedTo: AgentChangePayload?
            
            public var tags: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case content = "content"
                
                case category = "category"
                
                case subCategory = "sub_category"
                
                case source = "source"
                
                case status = "status"
                
                case priority = "priority"
                
                case assignedTo = "assigned_to"
                
                case tags = "tags"
                
            }

            public init(assignedTo: AgentChangePayload?, category: String?, content: TicketContent?, priority: String?, source: String?, status: String?, subCategory: String?, tags: [String]?) {
                
                self.content = content
                
                self.category = category
                
                self.subCategory = subCategory
                
                self.source = source
                
                self.status = status
                
                self.priority = priority
                
                self.assignedTo = assignedTo
                
                self.tags = tags
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    content = try container.decode(TicketContent.self, forKey: .content)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    category = try container.decode(String.self, forKey: .category)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subCategory = try container.decode(String.self, forKey: .subCategory)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    source = try container.decode(String.self, forKey: .source)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priority = try container.decode(String.self, forKey: .priority)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    assignedTo = try container.decode(AgentChangePayload.self, forKey: .assignedTo)
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
                
                try? container.encodeIfPresent(content, forKey: .content)
                
                try? container.encodeIfPresent(category, forKey: .category)
                
                try? container.encodeIfPresent(subCategory, forKey: .subCategory)
                
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
        class AgentChangePayload: Codable {
            
            public var agentId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case agentId = "agent_id"
                
            }

            public init(agentId: String) {
                
                self.agentId = agentId
                
            }

            required public init(from decoder: Decoder) throws {
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
        class CreateVideoRoomResponse: Codable {
            
            public var uniqueName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case uniqueName = "unique_name"
                
            }

            public init(uniqueName: String) {
                
                self.uniqueName = uniqueName
                
            }

            required public init(from decoder: Decoder) throws {
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
        class CloseVideoRoomResponse: Codable {
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool) {
                
                self.success = success
                
            }

            required public init(from decoder: Decoder) throws {
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
        class CreateVideoRoomPayload: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                uniqueName = try container.decode(String.self, forKey: .uniqueName)
                
                
                
                do {
                    notify = try container.decode([[String: Any]].self, forKey: .notify)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class Filter: Codable {
            
            public var priorities: [Priority]
            
            public var categories: [TicketCategory]?
            
            public var statuses: [Status]
            
            public var assignees: [[String: Any]]
            

            public enum CodingKeys: String, CodingKey {
                
                case priorities = "priorities"
                
                case categories = "categories"
                
                case statuses = "statuses"
                
                case assignees = "assignees"
                
            }

            public init(assignees: [[String: Any]], categories: [TicketCategory]?, priorities: [Priority], statuses: [Status]) {
                
                self.priorities = priorities
                
                self.categories = categories
                
                self.statuses = statuses
                
                self.assignees = assignees
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                priorities = try container.decode([Priority].self, forKey: .priorities)
                
                
                
                do {
                    categories = try container.decode([TicketCategory].self, forKey: .categories)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                statuses = try container.decode([Status].self, forKey: .statuses)
                
                
                
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
        class TicketHistoryPayload: Codable {
            
            public var value: [String: Any]
            
            public var type: String
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case type = "type"
                
            }

            public init(type: String, value: [String: Any]) {
                
                self.value = value
                
                self.type = type
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                value = try container.decode([String: Any].self, forKey: .value)
                
                
                
                type = try container.decode(String.self, forKey: .type)
                
                
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
        class CustomFormSubmissionPayload: Codable {
            
            public var response: [KeyValue]
            

            public enum CodingKeys: String, CodingKey {
                
                case response = "response"
                
            }

            public init(response: [KeyValue]) {
                
                self.response = response
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                response = try container.decode([KeyValue].self, forKey: .response)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(response, forKey: .response)
                
            }
            
        }
        
        /*
            Model: KeyValue
            Used By: Lead
        */
        class KeyValue: Codable {
            
            public var key: String
            
            public var value: String
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case value = "value"
                
            }

            public init(key: String, value: String) {
                
                self.key = key
                
                self.value = value
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                value = try container.decode(String.self, forKey: .value)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
            }
            
        }
        
        /*
            Model: GetTokenForVideoRoomResponse
            Used By: Lead
        */
        class GetTokenForVideoRoomResponse: Codable {
            
            public var accessToken: String
            

            public enum CodingKeys: String, CodingKey {
                
                case accessToken = "access_token"
                
            }

            public init(accessToken: String) {
                
                self.accessToken = accessToken
                
            }

            required public init(from decoder: Decoder) throws {
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
        class GetParticipantsInsideVideoRoomResponse: Codable {
            
            public var participants: [Participant]
            

            public enum CodingKeys: String, CodingKey {
                
                case participants = "participants"
                
            }

            public init(participants: [Participant]) {
                
                self.participants = participants
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                participants = try container.decode([Participant].self, forKey: .participants)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(participants, forKey: .participants)
                
            }
            
        }
        
        /*
            Model: Participant
            Used By: Lead
        */
        class Participant: Codable {
            
            public var user: UserSchema?
            
            public var identity: String?
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case identity = "identity"
                
                case status = "status"
                
            }

            public init(identity: String?, status: String?, user: UserSchema?) {
                
                self.user = user
                
                self.identity = identity
                
                self.status = status
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identity = try container.decode(String.self, forKey: .identity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                try? container.encodeIfPresent(identity, forKey: .identity)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
            }
            
        }
        
        /*
            Model: PhoneNumber
            Used By: Lead
        */
        class PhoneNumber: Codable {
            
            public var active: Bool?
            
            public var primary: Bool?
            
            public var verified: Bool?
            
            public var phone: String?
            
            public var countryCode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case active = "active"
                
                case primary = "primary"
                
                case verified = "verified"
                
                case phone = "phone"
                
                case countryCode = "country_code"
                
            }

            public init(active: Bool?, countryCode: Int?, phone: String?, primary: Bool?, verified: Bool?) {
                
                self.active = active
                
                self.primary = primary
                
                self.verified = verified
                
                self.phone = phone
                
                self.countryCode = countryCode
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
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
                    countryCode = try container.decode(Int.self, forKey: .countryCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
            }
            
        }
        
        /*
            Model: Email
            Used By: Lead
        */
        class Email: Codable {
            
            public var primary: Bool?
            
            public var verified: Bool?
            
            public var email: String?
            
            public var active: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case primary = "primary"
                
                case verified = "verified"
                
                case email = "email"
                
                case active = "active"
                
            }

            public init(active: Bool?, email: String?, primary: Bool?, verified: Bool?) {
                
                self.primary = primary
                
                self.verified = verified
                
                self.email = email
                
                self.active = active
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
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
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(active, forKey: .active)
                
            }
            
        }
        
        /*
            Model: Debug
            Used By: Lead
        */
        class Debug: Codable {
            
            public var source: String?
            
            public var platform: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case source = "source"
                
                case platform = "platform"
                
            }

            public init(platform: String?, source: String?) {
                
                self.source = source
                
                self.platform = platform
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    source = try container.decode(String.self, forKey: .source)
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
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                try? container.encodeIfPresent(platform, forKey: .platform)
                
            }
            
        }
        
        /*
            Model: SubmitCustomFormResponse
            Used By: Lead
        */
        class SubmitCustomFormResponse: Codable {
            
            public var ticket: Ticket
            

            public enum CodingKeys: String, CodingKey {
                
                case ticket = "ticket"
                
            }

            public init(ticket: Ticket) {
                
                self.ticket = ticket
                
            }

            required public init(from decoder: Decoder) throws {
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
        class TicketContext: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
        class CreatedOn: Codable {
            
            public var userAgent: String
            

            public enum CodingKeys: String, CodingKey {
                
                case userAgent = "user_agent"
                
            }

            public init(userAgent: String) {
                
                self.userAgent = userAgent
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                userAgent = try container.decode(String.self, forKey: .userAgent)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(userAgent, forKey: .userAgent)
                
            }
            
        }
        
        /*
            Model: TicketAsset
            Used By: Lead
        */
        class TicketAsset: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
        class TicketContent: Codable {
            
            public var title: String
            
            public var description: String?
            
            public var attachments: [TicketAsset]?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case description = "description"
                
                case attachments = "attachments"
                
            }

            public init(attachments: [TicketAsset]?, description: String?, title: String) {
                
                self.title = title
                
                self.description = description
                
                self.attachments = attachments
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attachments = try container.decode([TicketAsset].self, forKey: .attachments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(attachments, forKey: .attachments)
                
            }
            
        }
        
        /*
            Model: AddTicketPayload
            Used By: Lead
        */
        class AddTicketPayload: Codable {
            
            public var createdBy: [String: Any]?
            
            public var status: String?
            
            public var priority: String?
            
            public var category: String
            
            public var content: TicketContent
            

            public enum CodingKeys: String, CodingKey {
                
                case createdBy = "created_by"
                
                case status = "status"
                
                case priority = "priority"
                
                case category = "category"
                
                case content = "content"
                
            }

            public init(category: String, content: TicketContent, createdBy: [String: Any]?, priority: String?, status: String?) {
                
                self.createdBy = createdBy
                
                self.status = status
                
                self.priority = priority
                
                self.category = category
                
                self.content = content
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priority = try container.decode(String.self, forKey: .priority)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                category = try container.decode(String.self, forKey: .category)
                
                
                
                content = try container.decode(TicketContent.self, forKey: .content)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(createdBy, forKey: .createdBy)
                
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
        class Priority: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class Status: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
            Model: TicketCategory
            Used By: Lead
        */
        class TicketCategory: Codable {
            
            public var key: String
            
            public var display: String
            
            public var form: CustomForm?
            
            public var subCategories: [TicketSubCategory]?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case display = "display"
                
                case form = "form"
                
                case subCategories = "sub_categories"
                
            }

            public init(display: String, form: CustomForm?, key: String, subCategories: [TicketSubCategory]?) {
                
                self.key = key
                
                self.display = display
                
                self.form = form
                
                self.subCategories = subCategories
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                do {
                    form = try container.decode(CustomForm.self, forKey: .form)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subCategories = try container.decode([TicketSubCategory].self, forKey: .subCategories)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(form, forKey: .form)
                
                try? container.encodeIfPresent(subCategories, forKey: .subCategories)
                
            }
            
        }
        
        /*
            Model: TicketSubCategory
            Used By: Lead
        */
        class TicketSubCategory: Codable {
            
            public var key: String
            
            public var display: String
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case display = "display"
                
            }

            public init(display: String, key: String) {
                
                self.key = key
                
                self.display = display
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: SubmitButton
            Used By: Lead
        */
        class SubmitButton: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class PollForAssignment: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class CustomForm: Codable {
            
            public var applicationId: String
            
            public var slug: String
            
            public var headerImage: String?
            
            public var title: String
            
            public var description: String?
            
            public var priority: Priority
            
            public var loginRequired: Bool
            
            public var shouldNotify: Bool
            
            public var successMessage: String?
            
            public var submitButton: SubmitButton?
            
            public var inputs: [[String: Any]]
            
            public var createdOn: CreatedOn?
            
            public var createdBy: [String: Any]?
            
            public var pollForAssignment: PollForAssignment?
            
            public var id: String
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationId = "application_id"
                
                case slug = "slug"
                
                case headerImage = "header_image"
                
                case title = "title"
                
                case description = "description"
                
                case priority = "priority"
                
                case loginRequired = "login_required"
                
                case shouldNotify = "should_notify"
                
                case successMessage = "success_message"
                
                case submitButton = "submit_button"
                
                case inputs = "inputs"
                
                case createdOn = "created_on"
                
                case createdBy = "created_by"
                
                case pollForAssignment = "poll_for_assignment"
                
                case id = "_id"
                
            }

            public init(applicationId: String, createdBy: [String: Any]?, createdOn: CreatedOn?, description: String?, headerImage: String?, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment?, priority: Priority, shouldNotify: Bool, slug: String, submitButton: SubmitButton?, successMessage: String?, title: String, id: String) {
                
                self.applicationId = applicationId
                
                self.slug = slug
                
                self.headerImage = headerImage
                
                self.title = title
                
                self.description = description
                
                self.priority = priority
                
                self.loginRequired = loginRequired
                
                self.shouldNotify = shouldNotify
                
                self.successMessage = successMessage
                
                self.submitButton = submitButton
                
                self.inputs = inputs
                
                self.createdOn = createdOn
                
                self.createdBy = createdBy
                
                self.pollForAssignment = pollForAssignment
                
                self.id = id
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                do {
                    headerImage = try container.decode(String.self, forKey: .headerImage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                priority = try container.decode(Priority.self, forKey: .priority)
                
                
                
                loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
                
                
                
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
                
                
                
                do {
                    successMessage = try container.decode(String.self, forKey: .successMessage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    submitButton = try container.decode(SubmitButton.self, forKey: .submitButton)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                inputs = try container.decode([[String: Any]].self, forKey: .inputs)
                
                
                
                do {
                    createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(applicationId, forKey: .applicationId)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(headerImage, forKey: .headerImage)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(priority, forKey: .priority)
                
                try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
                
                try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
                
                try? container.encodeIfPresent(successMessage, forKey: .successMessage)
                
                try? container.encodeIfPresent(submitButton, forKey: .submitButton)
                
                try? container.encodeIfPresent(inputs, forKey: .inputs)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(createdBy, forKey: .createdBy)
                
                try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
            }
            
        }
        
        /*
            Model: TicketHistory
            Used By: Lead
        */
        class TicketHistory: Codable {
            
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
                
                case updatedAt = "updated_at"
                
                case createdAt = "created_at"
                
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                type = try container.decode(String.self, forKey: .type)
                
                
                
                value = try container.decode([String: Any].self, forKey: .value)
                
                
                
                ticketId = try container.decode(String.self, forKey: .ticketId)
                
                
                
                do {
                    createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class Ticket: Codable {
            
            public var context: TicketContext?
            
            public var createdOn: CreatedOn?
            
            public var responseId: String?
            
            public var content: TicketContent?
            
            public var ticketId: String
            
            public var category: TicketCategory
            
            public var subCategory: TicketSubCategory?
            
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
                
                case subCategory = "sub_category"
                
                case source = "source"
                
                case status = "status"
                
                case priority = "priority"
                
                case createdBy = "created_by"
                
                case assignedTo = "assigned_to"
                
                case tags = "tags"
                
                case customJson = "_custom_json"
                
                case id = "_id"
                
                case updatedAt = "updated_at"
                
                case createdAt = "created_at"
                
            }

            public init(assignedTo: [String: Any]?, category: TicketCategory, content: TicketContent?, context: TicketContext?, createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, priority: Priority, responseId: String?, source: String, status: Status, subCategory: TicketSubCategory?, tags: [String]?, ticketId: String, updatedAt: String?, customJson: [String: Any]?, id: String?) {
                
                self.context = context
                
                self.createdOn = createdOn
                
                self.responseId = responseId
                
                self.content = content
                
                self.ticketId = ticketId
                
                self.category = category
                
                self.subCategory = subCategory
                
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    context = try container.decode(TicketContext.self, forKey: .context)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    responseId = try container.decode(String.self, forKey: .responseId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    content = try container.decode(TicketContent.self, forKey: .content)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                ticketId = try container.decode(String.self, forKey: .ticketId)
                
                
                
                category = try container.decode(TicketCategory.self, forKey: .category)
                
                
                
                do {
                    subCategory = try container.decode(TicketSubCategory.self, forKey: .subCategory)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                source = try container.decode(String.self, forKey: .source)
                
                
                
                status = try container.decode(Status.self, forKey: .status)
                
                
                
                priority = try container.decode(Priority.self, forKey: .priority)
                
                
                
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    assignedTo = try container.decode([String: Any].self, forKey: .assignedTo)
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(context, forKey: .context)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(responseId, forKey: .responseId)
                
                try? container.encodeIfPresent(content, forKey: .content)
                
                try? container.encodeIfPresent(ticketId, forKey: .ticketId)
                
                try? container.encodeIfPresent(category, forKey: .category)
                
                try? container.encodeIfPresent(subCategory, forKey: .subCategory)
                
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
            Model: FailedResponse
            Used By: FileStorage
        */
        class FailedResponse: Codable {
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String) {
                
                self.message = message
                
            }

            required public init(from decoder: Decoder) throws {
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
        class CDN: Codable {
            
            public var url: String
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
            }

            public init(url: String) {
                
                self.url = url
                
            }

            required public init(from decoder: Decoder) throws {
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
        class Upload: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class StartResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class StartRequest: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class CompleteResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
            Model: Opts
            Used By: FileStorage
        */
        class Opts: Codable {
            
            public var attempts: Int?
            
            public var timestamp: Int?
            
            public var delay: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case attempts = "attempts"
                
                case timestamp = "timestamp"
                
                case delay = "delay"
                
            }

            public init(attempts: Int?, delay: Int?, timestamp: Int?) {
                
                self.attempts = attempts
                
                self.timestamp = timestamp
                
                self.delay = delay
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    attempts = try container.decode(Int.self, forKey: .attempts)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timestamp = try container.decode(Int.self, forKey: .timestamp)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    delay = try container.decode(Int.self, forKey: .delay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(attempts, forKey: .attempts)
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                try? container.encodeIfPresent(delay, forKey: .delay)
                
            }
            
        }
        
        /*
            Model: CopyFileTask
            Used By: FileStorage
        */
        class CopyFileTask: Codable {
            
            public var id: String
            
            public var name: String
            
            public var data: BulkRequest
            
            public var opts: Opts
            
            public var progress: Int
            
            public var delay: Int
            
            public var timestamp: Int
            
            public var attemptsMade: Int
            
            public var stacktrace: [String]?
            
            public var finishedOn: Int
            
            public var processedOn: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case name = "name"
                
                case data = "data"
                
                case opts = "opts"
                
                case progress = "progress"
                
                case delay = "delay"
                
                case timestamp = "timestamp"
                
                case attemptsMade = "attempts_made"
                
                case stacktrace = "stacktrace"
                
                case finishedOn = "finished_on"
                
                case processedOn = "processed_on"
                
            }

            public init(attemptsMade: Int, data: BulkRequest, delay: Int, finishedOn: Int, id: String, name: String, opts: Opts, processedOn: Int, progress: Int, stacktrace: [String]?, timestamp: Int) {
                
                self.id = id
                
                self.name = name
                
                self.data = data
                
                self.opts = opts
                
                self.progress = progress
                
                self.delay = delay
                
                self.timestamp = timestamp
                
                self.attemptsMade = attemptsMade
                
                self.stacktrace = stacktrace
                
                self.finishedOn = finishedOn
                
                self.processedOn = processedOn
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                data = try container.decode(BulkRequest.self, forKey: .data)
                
                
                
                opts = try container.decode(Opts.self, forKey: .opts)
                
                
                
                progress = try container.decode(Int.self, forKey: .progress)
                
                
                
                delay = try container.decode(Int.self, forKey: .delay)
                
                
                
                timestamp = try container.decode(Int.self, forKey: .timestamp)
                
                
                
                attemptsMade = try container.decode(Int.self, forKey: .attemptsMade)
                
                
                
                do {
                    stacktrace = try container.decode([String].self, forKey: .stacktrace)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                finishedOn = try container.decode(Int.self, forKey: .finishedOn)
                
                
                
                processedOn = try container.decode(Int.self, forKey: .processedOn)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(opts, forKey: .opts)
                
                try? container.encodeIfPresent(progress, forKey: .progress)
                
                try? container.encodeIfPresent(delay, forKey: .delay)
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                try? container.encodeIfPresent(attemptsMade, forKey: .attemptsMade)
                
                try? container.encodeIfPresent(stacktrace, forKey: .stacktrace)
                
                try? container.encodeIfPresent(finishedOn, forKey: .finishedOn)
                
                try? container.encodeIfPresent(processedOn, forKey: .processedOn)
                
            }
            
        }
        
        /*
            Model: BulkResponse
            Used By: FileStorage
        */
        class BulkResponse: Codable {
            
            public var trackingUrl: String
            
            public var task: CopyFileTask
            

            public enum CodingKeys: String, CodingKey {
                
                case trackingUrl = "tracking_url"
                
                case task = "task"
                
            }

            public init(task: CopyFileTask, trackingUrl: String) {
                
                self.trackingUrl = trackingUrl
                
                self.task = task
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                
                
                task = try container.decode(CopyFileTask.self, forKey: .task)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
                
                try? container.encodeIfPresent(task, forKey: .task)
                
            }
            
        }
        
        /*
            Model: ReqConfiguration
            Used By: FileStorage
        */
        class ReqConfiguration: Codable {
            
            public var concurrency: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case concurrency = "concurrency"
                
            }

            public init(concurrency: Int?) {
                
                self.concurrency = concurrency
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    concurrency = try container.decode(Int.self, forKey: .concurrency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(concurrency, forKey: .concurrency)
                
            }
            
        }
        
        /*
            Model: Destination
            Used By: FileStorage
        */
        class Destination: Codable {
            
            public var namespace: String
            
            public var rewrite: String
            
            public var basepath: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case namespace = "namespace"
                
                case rewrite = "rewrite"
                
                case basepath = "basepath"
                
            }

            public init(basepath: String?, namespace: String, rewrite: String) {
                
                self.namespace = namespace
                
                self.rewrite = rewrite
                
                self.basepath = basepath
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                namespace = try container.decode(String.self, forKey: .namespace)
                
                
                
                rewrite = try container.decode(String.self, forKey: .rewrite)
                
                
                
                do {
                    basepath = try container.decode(String.self, forKey: .basepath)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(namespace, forKey: .namespace)
                
                try? container.encodeIfPresent(rewrite, forKey: .rewrite)
                
                try? container.encodeIfPresent(basepath, forKey: .basepath)
                
            }
            
        }
        
        /*
            Model: BulkRequest
            Used By: FileStorage
        */
        class BulkRequest: Codable {
            
            public var urls: [String]
            
            public var destination: Destination
            
            public var configuration: ReqConfiguration?
            

            public enum CodingKeys: String, CodingKey {
                
                case urls = "urls"
                
                case destination = "destination"
                
                case configuration = "configuration"
                
            }

            public init(configuration: ReqConfiguration?, destination: Destination, urls: [String]) {
                
                self.urls = urls
                
                self.destination = destination
                
                self.configuration = configuration
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                urls = try container.decode([String].self, forKey: .urls)
                
                
                
                destination = try container.decode(Destination.self, forKey: .destination)
                
                
                
                do {
                    configuration = try container.decode(ReqConfiguration.self, forKey: .configuration)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(urls, forKey: .urls)
                
                try? container.encodeIfPresent(destination, forKey: .destination)
                
                try? container.encodeIfPresent(configuration, forKey: .configuration)
                
            }
            
        }
        
        /*
            Model: Urls
            Used By: FileStorage
        */
        class Urls: Codable {
            
            public var url: String
            
            public var signedUrl: String
            
            public var expiry: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case signedUrl = "signed_url"
                
                case expiry = "expiry"
                
            }

            public init(expiry: Int, signedUrl: String, url: String) {
                
                self.url = url
                
                self.signedUrl = signedUrl
                
                self.expiry = expiry
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                url = try container.decode(String.self, forKey: .url)
                
                
                
                signedUrl = try container.decode(String.self, forKey: .signedUrl)
                
                
                
                expiry = try container.decode(Int.self, forKey: .expiry)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(signedUrl, forKey: .signedUrl)
                
                try? container.encodeIfPresent(expiry, forKey: .expiry)
                
            }
            
        }
        
        /*
            Model: SignUrlResponse
            Used By: FileStorage
        */
        class SignUrlResponse: Codable {
            
            public var urls: [Urls]
            

            public enum CodingKeys: String, CodingKey {
                
                case urls = "urls"
                
            }

            public init(urls: [Urls]) {
                
                self.urls = urls
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                urls = try container.decode([Urls].self, forKey: .urls)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(urls, forKey: .urls)
                
            }
            
        }
        
        /*
            Model: SignUrlRequest
            Used By: FileStorage
        */
        class SignUrlRequest: Codable {
            
            public var expiry: Int
            
            public var urls: [String]
            

            public enum CodingKeys: String, CodingKey {
                
                case expiry = "expiry"
                
                case urls = "urls"
                
            }

            public init(expiry: Int, urls: [String]) {
                
                self.expiry = expiry
                
                self.urls = urls
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                expiry = try container.decode(Int.self, forKey: .expiry)
                
                
                
                urls = try container.decode([String].self, forKey: .urls)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(expiry, forKey: .expiry)
                
                try? container.encodeIfPresent(urls, forKey: .urls)
                
            }
            
        }
        
        /*
            Model: DbRecord
            Used By: FileStorage
        */
        class DbRecord: Codable {
            
            public var success: Bool
            
            public var tags: [String]
            
            public var id: String
            
            public var fileName: String
            
            public var operation: String?
            
            public var namespace: String
            
            public var contentType: String
            
            public var filePath: String
            
            public var upload: Upload
            
            public var cdn: CDN
            
            public var createdOn: String
            
            public var modifiedOn: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case tags = "tags"
                
                case id = "_id"
                
                case fileName = "file_name"
                
                case operation = "operation"
                
                case namespace = "namespace"
                
                case contentType = "content_type"
                
                case filePath = "file_path"
                
                case upload = "upload"
                
                case cdn = "cdn"
                
                case createdOn = "created_on"
                
                case modifiedOn = "modified_on"
                
            }

            public init(cdn: CDN, contentType: String, createdOn: String, fileName: String, filePath: String, modifiedOn: String, namespace: String, operation: String?, success: Bool, tags: [String], upload: Upload, id: String) {
                
                self.success = success
                
                self.tags = tags
                
                self.id = id
                
                self.fileName = fileName
                
                self.operation = operation
                
                self.namespace = namespace
                
                self.contentType = contentType
                
                self.filePath = filePath
                
                self.upload = upload
                
                self.cdn = cdn
                
                self.createdOn = createdOn
                
                self.modifiedOn = modifiedOn
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                tags = try container.decode([String].self, forKey: .tags)
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
                fileName = try container.decode(String.self, forKey: .fileName)
                
                
                
                do {
                    operation = try container.decode(String.self, forKey: .operation)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                namespace = try container.decode(String.self, forKey: .namespace)
                
                
                
                contentType = try container.decode(String.self, forKey: .contentType)
                
                
                
                filePath = try container.decode(String.self, forKey: .filePath)
                
                
                
                upload = try container.decode(Upload.self, forKey: .upload)
                
                
                
                cdn = try container.decode(CDN.self, forKey: .cdn)
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(fileName, forKey: .fileName)
                
                try? container.encodeIfPresent(operation, forKey: .operation)
                
                try? container.encodeIfPresent(namespace, forKey: .namespace)
                
                try? container.encodeIfPresent(contentType, forKey: .contentType)
                
                try? container.encodeIfPresent(filePath, forKey: .filePath)
                
                try? container.encodeIfPresent(upload, forKey: .upload)
                
                try? container.encodeIfPresent(cdn, forKey: .cdn)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
            }
            
        }
        
        /*
            Model: BrowseResponse
            Used By: FileStorage
        */
        class BrowseResponse: Codable {
            
            public var items: [DbRecord]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [DbRecord], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([DbRecord].self, forKey: .items)
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        
        
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var sdk: Bool?
            
            public var configType: String
            
            public var pin: String?
            
            public var api: String?
            
            public var key: String
            
            public var merchantId: String?
            
            public var secret: String
            
            public var userId: String?
            
            public var merchantKey: String?
            
            public var verifyApi: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case sdk = "sdk"
                
                case configType = "config_type"
                
                case pin = "pin"
                
                case api = "api"
                
                case key = "key"
                
                case merchantId = "merchant_id"
                
                case secret = "secret"
                
                case userId = "user_id"
                
                case merchantKey = "merchant_key"
                
                case verifyApi = "verify_api"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.sdk = sdk
                
                self.configType = configType
                
                self.pin = pin
                
                self.api = api
                
                self.key = key
                
                self.merchantId = merchantId
                
                self.secret = secret
                
                self.userId = userId
                
                self.merchantKey = merchantKey
                
                self.verifyApi = verifyApi
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sdk = try container.decode(Bool.self, forKey: .sdk)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
                do {
                    pin = try container.decode(String.self, forKey: .pin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                do {
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantKey = try container.decode(String.self, forKey: .merchantKey)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyApi = try container.decode(String.self, forKey: .verifyApi)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sdk, forKey: .sdk)
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                try? container.encodeIfPresent(pin, forKey: .pin)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(merchantId, forKey: .merchantId)
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
                
                try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var razorpay: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            
            public var simpl: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var env: String
            
            public var payumoney: AggregatorConfigDetail?
            
            public var mswipe: AggregatorConfigDetail?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case razorpay = "razorpay"
                
                case rupifi = "rupifi"
                
                case stripe = "stripe"
                
                case juspay = "juspay"
                
                case simpl = "simpl"
                
                case ccavenue = "ccavenue"
                
                case env = "env"
                
                case payumoney = "payumoney"
                
                case mswipe = "mswipe"
                
                case success = "success"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.razorpay = razorpay
                
                self.rupifi = rupifi
                
                self.stripe = stripe
                
                self.juspay = juspay
                
                self.simpl = simpl
                
                self.ccavenue = ccavenue
                
                self.env = env
                
                self.payumoney = payumoney
                
                self.mswipe = mswipe
                
                self.success = success
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
                do {
                    payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        class ErrorCodeAndDescription: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class HttpErrorCodeAndResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class AttachCardRequest: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    refresh = try container.decode(Bool.self, forKey: .refresh)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
        class AttachCardsResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
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
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        class CardPaymentGateway: Codable {
            
            public var aggregator: String
            
            public var customerId: String?
            
            public var api: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case api = "api"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.api = api
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        class ActiveCardPaymentGatewayResponse: Codable {
            
            public var cards: CardPaymentGateway
            
            public var success: Bool
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cards = "cards"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.cards = cards
                
                self.success = success
                
                self.message = message
                
            }

            required public init(from decoder: Decoder) throws {
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
        class Card: Codable {
            
            public var cardIssuer: String?
            
            public var cardType: String?
            
            public var cardReference: String?
            
            public var cardBrand: String?
            
            public var cardNumber: String?
            
            public var expMonth: Int?
            
            public var cardToken: String?
            
            public var expired: Bool?
            
            public var nickname: String?
            
            public var cardIsin: String?
            
            public var expYear: Int?
            
            public var aggregatorName: String
            
            public var cardBrandImage: String?
            
            public var cardName: String?
            
            public var cardFingerprint: String?
            
            public var cardId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardIssuer = "card_issuer"
                
                case cardType = "card_type"
                
                case cardReference = "card_reference"
                
                case cardBrand = "card_brand"
                
                case cardNumber = "card_number"
                
                case expMonth = "exp_month"
                
                case cardToken = "card_token"
                
                case expired = "expired"
                
                case nickname = "nickname"
                
                case cardIsin = "card_isin"
                
                case expYear = "exp_year"
                
                case aggregatorName = "aggregator_name"
                
                case cardBrandImage = "card_brand_image"
                
                case cardName = "card_name"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardId = "card_id"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardIssuer = cardIssuer
                
                self.cardType = cardType
                
                self.cardReference = cardReference
                
                self.cardBrand = cardBrand
                
                self.cardNumber = cardNumber
                
                self.expMonth = expMonth
                
                self.cardToken = cardToken
                
                self.expired = expired
                
                self.nickname = nickname
                
                self.cardIsin = cardIsin
                
                self.expYear = expYear
                
                self.aggregatorName = aggregatorName
                
                self.cardBrandImage = cardBrandImage
                
                self.cardName = cardName
                
                self.cardFingerprint = cardFingerprint
                
                self.cardId = cardId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        class ListCardsResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    data = try container.decode([Card].self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
        class DeletehCardRequest: Codable {
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
            }

            public init(cardId: String) {
                
                self.cardId = cardId
                
            }

            required public init(from decoder: Decoder) throws {
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
        class DeleteCardsResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
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
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: ValidateCustomerRequest
            Used By: Payment
        */
        class ValidateCustomerRequest: Codable {
            
            public var aggregator: String
            
            public var merchantParams: [String: Any]
            
            public var transactionAmountInPaise: Int
            
            public var phoneNumber: String
            
            public var payload: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case merchantParams = "merchant_params"
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case phoneNumber = "phone_number"
                
                case payload = "payload"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.aggregator = aggregator
                
                self.merchantParams = merchantParams
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.phoneNumber = phoneNumber
                
                self.payload = payload
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                try? container.encodeIfPresent(payload, forKey: .payload)
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        class ValidateCustomerResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class ChargeCustomerRequest: Codable {
            
            public var amount: Int
            
            public var aggregator: String
            
            public var orderId: String
            
            public var transactionToken: String?
            
            public var verified: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case aggregator = "aggregator"
                
                case orderId = "order_id"
                
                case transactionToken = "transaction_token"
                
                case verified = "verified"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.amount = amount
                
                self.aggregator = aggregator
                
                self.orderId = orderId
                
                self.transactionToken = transactionToken
                
                self.verified = verified
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                do {
                    transactionToken = try container.decode(String.self, forKey: .transactionToken)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var aggregator: String
            
            public var orderId: String
            
            public var deliveryAddressId: String?
            
            public var cartId: String?
            
            public var success: Bool
            
            public var status: String
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case orderId = "order_id"
                
                case deliveryAddressId = "delivery_address_id"
                
                case cartId = "cart_id"
                
                case success = "success"
                
                case status = "status"
                
                case message = "message"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.aggregator = aggregator
                
                self.orderId = orderId
                
                self.deliveryAddressId = deliveryAddressId
                
                self.cartId = cartId
                
                self.success = success
                
                self.status = status
                
                self.message = message
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                do {
                    deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var razorpayPaymentId: String
            
            public var pollingUrl: String
            
            public var merchantOrderId: String
            
            public var aggregator: String
            
            public var method: String
            
            public var timeout: Int
            
            public var aggregatorOrderId: String
            
            public var virtualId: String?
            
            public var customerId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case pollingUrl = "polling_url"
                
                case merchantOrderId = "merchant_order_id"
                
                case aggregator = "aggregator"
                
                case method = "method"
                
                case timeout = "timeout"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case virtualId = "virtual_id"
                
                case customerId = "customer_id"
                
            }

            public init(aggregator: String, aggregatorOrderId: String, customerId: String, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String, timeout: Int, virtualId: String?) {
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.pollingUrl = pollingUrl
                
                self.merchantOrderId = merchantOrderId
                
                self.aggregator = aggregator
                
                self.method = method
                
                self.timeout = timeout
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.virtualId = virtualId
                
                self.customerId = customerId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                timeout = try container.decode(Int.self, forKey: .timeout)
                
                
                
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(timeout, forKey: .timeout)
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                try? container.encodeIfPresent(virtualId, forKey: .virtualId)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var merchantOrderId: String
            
            public var pollingUrl: String
            
            public var amount: Int?
            
            public var aggregator: String
            
            public var razorpayPaymentId: String?
            
            public var method: String
            
            public var bqrImage: String?
            
            public var timeout: Int?
            
            public var aggregatorOrderId: String?
            
            public var vpa: String?
            
            public var virtualId: String?
            
            public var currency: String?
            
            public var customerId: String?
            
            public var success: Bool
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case pollingUrl = "polling_url"
                
                case amount = "amount"
                
                case aggregator = "aggregator"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case method = "method"
                
                case bqrImage = "bqr_image"
                
                case timeout = "timeout"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case vpa = "vpa"
                
                case virtualId = "virtual_id"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case success = "success"
                
                case status = "status"
                
            }

            public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, virtualId: String?, vpa: String?) {
                
                self.merchantOrderId = merchantOrderId
                
                self.pollingUrl = pollingUrl
                
                self.amount = amount
                
                self.aggregator = aggregator
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.method = method
                
                self.bqrImage = bqrImage
                
                self.timeout = timeout
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.vpa = vpa
                
                self.virtualId = virtualId
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.success = success
                
                self.status = status
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(bqrImage, forKey: .bqrImage)
                
                try? container.encodeIfPresent(timeout, forKey: .timeout)
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(virtualId, forKey: .virtualId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var merchantOrderId: String
            
            public var amount: Int
            
            public var aggregator: String
            
            public var orderId: String
            
            public var email: String
            
            public var method: String
            
            public var vpa: String
            
            public var contact: String
            
            public var currency: String
            
            public var customerId: String
            
            public var status: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case amount = "amount"
                
                case aggregator = "aggregator"
                
                case orderId = "order_id"
                
                case email = "email"
                
                case method = "method"
                
                case vpa = "vpa"
                
                case contact = "contact"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case status = "status"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.merchantOrderId = merchantOrderId
                
                self.amount = amount
                
                self.aggregator = aggregator
                
                self.orderId = orderId
                
                self.email = email
                
                self.method = method
                
                self.vpa = vpa
                
                self.contact = contact
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.status = status
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        class PaymentStatusUpdateResponse: Codable {
            
            public var status: String
            
            public var retry: Bool
            
            public var aggregatorName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case retry = "retry"
                
                case aggregatorName = "aggregator_name"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.status = status
                
                self.retry = retry
                
                self.aggregatorName = aggregatorName
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var paymentFlow: String?
            
            public var data: [String: Any]?
            
            public var apiLink: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlow = "payment_flow"
                
                case data = "data"
                
                case apiLink = "api_link"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?) {
                
                self.paymentFlow = paymentFlow
                
                self.data = data
                
                self.apiLink = apiLink
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
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
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(apiLink, forKey: .apiLink)
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var razorpay: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            
            public var juspay: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var msipe: AggregatorRoute?
            
            public var ccavenue: AggregatorRoute?
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var fynd: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case razorpay = "razorpay"
                
                case rupifi = "rupifi"
                
                case upiRazorpay = "upi_razorpay"
                
                case stripe = "stripe"
                
                case juspay = "juspay"
                
                case simpl = "simpl"
                
                case payubiz = "payubiz"
                
                case msipe = "msipe"
                
                case ccavenue = "ccavenue"
                
                case bqrRazorpay = "bqr_razorpay"
                
                case fynd = "fynd"
                
            }

            public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, fynd: AggregatorRoute?, juspay: AggregatorRoute?, msipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
                
                self.razorpay = razorpay
                
                self.rupifi = rupifi
                
                self.upiRazorpay = upiRazorpay
                
                self.stripe = stripe
                
                self.juspay = juspay
                
                self.simpl = simpl
                
                self.payubiz = payubiz
                
                self.msipe = msipe
                
                self.ccavenue = ccavenue
                
                self.bqrRazorpay = bqrRazorpay
                
                self.fynd = fynd
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    msipe = try container.decode(AggregatorRoute.self, forKey: .msipe)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(payubiz, forKey: .payubiz)
                
                try? container.encodeIfPresent(msipe, forKey: .msipe)
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                try? container.encodeIfPresent(bqrRazorpay, forKey: .bqrRazorpay)
                
                try? container.encodeIfPresent(fynd, forKey: .fynd)
                
            }
            
        }
        
        /*
            Model: PaymentModeLogo
            Used By: Payment
        */
        class PaymentModeLogo: Codable {
            
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

            required public init(from decoder: Decoder) throws {
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
        class PaymentModeList: Codable {
            
            public var cardReference: String?
            
            public var cardBrand: String?
            
            public var intentAppErrorList: [String]?
            
            public var timeout: Int?
            
            public var name: String?
            
            public var code: String?
            
            public var aggregatorName: String
            
            public var cardId: String?
            
            public var cardIssuer: String?
            
            public var cardType: String?
            
            public var displayName: String?
            
            public var cardName: String?
            
            public var cardFingerprint: String?
            
            public var fyndVpa: String?
            
            public var merchantCode: String?
            
            public var cardToken: String?
            
            public var expired: Bool?
            
            public var intentFlow: String?
            
            public var cardIsin: String?
            
            public var retryCount: Int?
            
            public var displayPriority: Int?
            
            public var cardNumber: String?
            
            public var expMonth: Int?
            
            public var logoUrl: PaymentModeLogo?
            
            public var nickname: String?
            
            public var expYear: Int?
            
            public var cardBrandImage: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardReference = "card_reference"
                
                case cardBrand = "card_brand"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case timeout = "timeout"
                
                case name = "name"
                
                case code = "code"
                
                case aggregatorName = "aggregator_name"
                
                case cardId = "card_id"
                
                case cardIssuer = "card_issuer"
                
                case cardType = "card_type"
                
                case displayName = "display_name"
                
                case cardName = "card_name"
                
                case cardFingerprint = "card_fingerprint"
                
                case fyndVpa = "fynd_vpa"
                
                case merchantCode = "merchant_code"
                
                case cardToken = "card_token"
                
                case expired = "expired"
                
                case intentFlow = "intent_flow"
                
                case cardIsin = "card_isin"
                
                case retryCount = "retry_count"
                
                case displayPriority = "display_priority"
                
                case cardNumber = "card_number"
                
                case expMonth = "exp_month"
                
                case logoUrl = "logo_url"
                
                case nickname = "nickname"
                
                case expYear = "exp_year"
                
                case cardBrandImage = "card_brand_image"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentAppErrorList: [String]?, intentFlow: String?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
                
                self.cardReference = cardReference
                
                self.cardBrand = cardBrand
                
                self.intentAppErrorList = intentAppErrorList
                
                self.timeout = timeout
                
                self.name = name
                
                self.code = code
                
                self.aggregatorName = aggregatorName
                
                self.cardId = cardId
                
                self.cardIssuer = cardIssuer
                
                self.cardType = cardType
                
                self.displayName = displayName
                
                self.cardName = cardName
                
                self.cardFingerprint = cardFingerprint
                
                self.fyndVpa = fyndVpa
                
                self.merchantCode = merchantCode
                
                self.cardToken = cardToken
                
                self.expired = expired
                
                self.intentFlow = intentFlow
                
                self.cardIsin = cardIsin
                
                self.retryCount = retryCount
                
                self.displayPriority = displayPriority
                
                self.cardNumber = cardNumber
                
                self.expMonth = expMonth
                
                self.logoUrl = logoUrl
                
                self.nickname = nickname
                
                self.expYear = expYear
                
                self.cardBrandImage = cardBrandImage
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
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
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
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
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentFlow = try container.decode(String.self, forKey: .intentFlow)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(intentAppErrorList, forKey: .intentAppErrorList)
                
                try? container.encodeIfPresent(timeout, forKey: .timeout)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(fyndVpa, forKey: .fyndVpa)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(intentFlow, forKey: .intentFlow)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(retryCount, forKey: .retryCount)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var displayPriority: Int
            
            public var displayName: String
            
            public var addCardEnabled: Bool?
            
            public var name: String
            
            public var aggregatorName: String?
            
            public var list: [PaymentModeList]?
            
            public var anonymousEnable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayPriority = "display_priority"
                
                case displayName = "display_name"
                
                case addCardEnabled = "add_card_enabled"
                
                case name = "name"
                
                case aggregatorName = "aggregator_name"
                
                case list = "list"
                
                case anonymousEnable = "anonymous_enable"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
                
                self.displayPriority = displayPriority
                
                self.displayName = displayName
                
                self.addCardEnabled = addCardEnabled
                
                self.name = name
                
                self.aggregatorName = aggregatorName
                
                self.list = list
                
                self.anonymousEnable = anonymousEnable
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(addCardEnabled, forKey: .addCardEnabled)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                try? container.encodeIfPresent(anonymousEnable, forKey: .anonymousEnable)
                
            }
            
        }
        
        /*
            Model: PaymentOptionAndFlow
            Used By: Payment
        */
        class PaymentOptionAndFlow: Codable {
            
            public var paymentFlows: PaymentFlow
            
            public var paymentOption: [RootPaymentMode]
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlows = "payment_flows"
                
                case paymentOption = "payment_option"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
                
                self.paymentFlows = paymentFlows
                
                self.paymentOption = paymentOption
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                
                
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
                
            }
            
        }
        
        /*
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        class PaymentModeRouteResponse: Codable {
            
            public var success: Bool
            
            public var paymentOptions: PaymentOptionAndFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case paymentOptions = "payment_options"
                
            }

            public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
                
                self.success = success
                
                self.paymentOptions = paymentOptions
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
            }
            
        }
        
        /*
            Model: TransferItemsDetails
            Used By: Payment
        */
        class TransferItemsDetails: Codable {
            
            public var displayName: Bool?
            
            public var name: String
            
            public var id: String
            
            public var logoSmall: String
            
            public var logoLarge: String
            

            public enum CodingKeys: String, CodingKey {
                
                case displayName = "display_name"
                
                case name = "name"
                
                case id = "id"
                
                case logoSmall = "logo_small"
                
                case logoLarge = "logo_large"
                
            }

            public init(displayName: Bool?, id: String, logoLarge: String, logoSmall: String, name: String) {
                
                self.displayName = displayName
                
                self.name = name
                
                self.id = id
                
                self.logoSmall = logoSmall
                
                self.logoLarge = logoLarge
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    displayName = try container.decode(Bool.self, forKey: .displayName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
            }
            
        }
        
        /*
            Model: TransferModeDetails
            Used By: Payment
        */
        class TransferModeDetails: Codable {
            
            public var items: [TransferItemsDetails]?
            
            public var displayName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String, items: [TransferItemsDetails]?) {
                
                self.items = items
                
                self.displayName = displayName
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([TransferItemsDetails].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
            }
            
        }
        
        /*
            Model: TransferModeResponse
            Used By: Payment
        */
        class TransferModeResponse: Codable {
            
            public var data: [TransferModeDetails]
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [TransferModeDetails]) {
                
                self.data = data
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode([TransferModeDetails].self, forKey: .data)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeRequest
            Used By: Payment
        */
        class UpdateRefundTransferModeRequest: Codable {
            
            public var enable: Bool
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case enable = "enable"
                
                case transferMode = "transfer_mode"
                
            }

            public init(enable: Bool, transferMode: String) {
                
                self.enable = enable
                
                self.transferMode = transferMode
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                enable = try container.decode(Bool.self, forKey: .enable)
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(enable, forKey: .enable)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeResponse
            Used By: Payment
        */
        class UpdateRefundTransferModeResponse: Codable {
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool?) {
                
                self.success = success
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        class OrderBeneficiaryDetails: Codable {
            
            public var address: String
            
            public var modifiedOn: String
            
            public var isActive: Bool
            
            public var beneficiaryId: String
            
            public var displayName: String
            
            public var branchName: Bool?
            
            public var email: String
            
            public var createdOn: String
            
            public var accountHolder: String
            
            public var id: Int
            
            public var accountNo: String
            
            public var title: String
            
            public var transferMode: String
            
            public var subtitle: String
            
            public var comment: Bool?
            
            public var bankName: String
            
            public var ifscCode: String
            
            public var delightsUserName: String
            
            public var mobile: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case modifiedOn = "modified_on"
                
                case isActive = "is_active"
                
                case beneficiaryId = "beneficiary_id"
                
                case displayName = "display_name"
                
                case branchName = "branch_name"
                
                case email = "email"
                
                case createdOn = "created_on"
                
                case accountHolder = "account_holder"
                
                case id = "id"
                
                case accountNo = "account_no"
                
                case title = "title"
                
                case transferMode = "transfer_mode"
                
                case subtitle = "subtitle"
                
                case comment = "comment"
                
                case bankName = "bank_name"
                
                case ifscCode = "ifsc_code"
                
                case delightsUserName = "delights_user_name"
                
                case mobile = "mobile"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.address = address
                
                self.modifiedOn = modifiedOn
                
                self.isActive = isActive
                
                self.beneficiaryId = beneficiaryId
                
                self.displayName = displayName
                
                self.branchName = branchName
                
                self.email = email
                
                self.createdOn = createdOn
                
                self.accountHolder = accountHolder
                
                self.id = id
                
                self.accountNo = accountNo
                
                self.title = title
                
                self.transferMode = transferMode
                
                self.subtitle = subtitle
                
                self.comment = comment
                
                self.bankName = bankName
                
                self.ifscCode = ifscCode
                
                self.delightsUserName = delightsUserName
                
                self.mobile = mobile
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryResponse
            Used By: Payment
        */
        class OrderBeneficiaryResponse: Codable {
            
            public var beneficiaries: [OrderBeneficiaryDetails]
            

            public enum CodingKeys: String, CodingKey {
                
                case beneficiaries = "beneficiaries"
                
            }

            public init(beneficiaries: [OrderBeneficiaryDetails]) {
                
                self.beneficiaries = beneficiaries
                
            }

            required public init(from decoder: Decoder) throws {
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
        class NotFoundResourceError: Codable {
            
            public var success: Bool
            
            public var description: String
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case description = "description"
                
                case code = "code"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.success = success
                
                self.description = description
                
                self.code = code
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: IfscCodeResponse
            Used By: Payment
        */
        class IfscCodeResponse: Codable {
            
            public var bankName: String
            
            public var success: Bool?
            
            public var branchName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case success = "success"
                
                case branchName = "branch_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.bankName = bankName
                
                self.success = success
                
                self.branchName = branchName
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
        class ErrorCodeDescription: Codable {
            
            public var success: Bool
            
            public var description: String
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case description = "description"
                
                case code = "code"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.success = success
                
                self.description = description
                
                self.code = code
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var requestId: String
            
            public var otp: String
            
            public var hashKey: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case otp = "otp"
                
                case hashKey = "hash_key"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.requestId = requestId
                
                self.otp = otp
                
                self.hashKey = hashKey
                
            }

            required public init(from decoder: Decoder) throws {
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
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var requestId: String
            
            public var otp: String
            
            public var hashKey: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case otp = "otp"
                
                case hashKey = "hash_key"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.requestId = requestId
                
                self.otp = otp
                
                self.hashKey = hashKey
                
            }

            required public init(from decoder: Decoder) throws {
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
            Used By: Payment
        */
        class WrongOtpError: Codable {
            
            public var success: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(description: String, success: String) {
                
                self.success = success
                
                self.description = description
                
            }

            required public init(from decoder: Decoder) throws {
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
        class BankDetails: Codable {
            
            public var bankName: String
            
            public var ifscCode: String
            
            public var branchName: String
            
            public var address: String?
            
            public var email: String
            
            public var mobile: String
            
            public var accountHolder: String
            
            public var accountNo: String
            
            public var comment: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case ifscCode = "ifsc_code"
                
                case branchName = "branch_name"
                
                case address = "address"
                
                case email = "email"
                
                case mobile = "mobile"
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
                case comment = "comment"
                
            }

            public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String) {
                
                self.bankName = bankName
                
                self.ifscCode = ifscCode
                
                self.branchName = branchName
                
                self.address = address
                
                self.email = email
                
                self.mobile = mobile
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
                self.comment = comment
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
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
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var orderId: String
            
            public var transferMode: String
            
            public var details: BankDetails
            
            public var delights: Bool
            
            public var shipmentId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case transferMode = "transfer_mode"
                
                case details = "details"
                
                case delights = "delights"
                
                case shipmentId = "shipment_id"
                
            }

            public init(delights: Bool, details: BankDetails, orderId: String, shipmentId: String, transferMode: String) {
                
                self.orderId = orderId
                
                self.transferMode = transferMode
                
                self.details = details
                
                self.delights = delights
                
                self.shipmentId = shipmentId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                details = try container.decode(BankDetails.self, forKey: .details)
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
        class WalletOtpRequest: Codable {
            
            public var mobile: Bool
            
            public var countryCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
            }

            public init(countryCode: String, mobile: Bool) {
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
            }

            required public init(from decoder: Decoder) throws {
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
        class WalletOtpResponse: Codable {
            
            public var requestId: String
            
            public var success: Bool?
            
            public var isVerifiedFlag: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
                
                self.requestId = requestId
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryRequest
            Used By: Payment
        */
        class SetDefaultBeneficiaryRequest: Codable {
            
            public var orderId: String
            
            public var beneficiaryId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case beneficiaryId = "beneficiary_id"
                
            }

            public init(beneficiaryId: String, orderId: String) {
                
                self.orderId = orderId
                
                self.beneficiaryId = beneficiaryId
                
            }

            required public init(from decoder: Decoder) throws {
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
        class SetDefaultBeneficiaryResponse: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class OrderById: Codable {
            
            public var order: OrderSchema
            

            public enum CodingKeys: String, CodingKey {
                
                case order = "order"
                
            }

            public init(order: OrderSchema) {
                
                self.order = order
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                order = try container.decode(OrderSchema.self, forKey: .order)
                
                
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
        class OrderList: Codable {
            
            public var items: [OrderSchema]
            
            public var page: OrderPage
            
            public var filters: OrderFilters
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
                case filters = "filters"
                
            }

            public init(filters: OrderFilters, items: [OrderSchema], page: OrderPage) {
                
                self.items = items
                
                self.page = page
                
                self.filters = filters
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([OrderSchema].self, forKey: .items)
                
                
                
                page = try container.decode(OrderPage.self, forKey: .page)
                
                
                
                filters = try container.decode(OrderFilters.self, forKey: .filters)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
            }
            
        }
        
        /*
            Model: OrderPage
            Used By: Order
        */
        class OrderPage: Codable {
            
            public var itemTotal: Int?
            
            public var type: String?
            
            public var size: Int?
            
            public var current: Int?
            
            public var hasNext: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemTotal = "item_total"
                
                case type = "type"
                
                case size = "size"
                
                case current = "current"
                
                case hasNext = "has_next"
                
            }

            public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
                
                self.itemTotal = itemTotal
                
                self.type = type
                
                self.size = size
                
                self.current = current
                
                self.hasNext = hasNext
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
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
                    size = try container.decode(Int.self, forKey: .size)
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
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
            }
            
        }
        
        /*
            Model: OrderFilters
            Used By: Order
        */
        class OrderFilters: Codable {
            
            public var statuses: [OrderStatuses]?
            
            public var months: [OrderMonths]?
            

            public enum CodingKeys: String, CodingKey {
                
                case statuses = "statuses"
                
                case months = "months"
                
            }

            public init(months: [OrderMonths]?, statuses: [OrderStatuses]?) {
                
                self.statuses = statuses
                
                self.months = months
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    statuses = try container.decode([OrderStatuses].self, forKey: .statuses)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    months = try container.decode([OrderMonths].self, forKey: .months)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(statuses, forKey: .statuses)
                
                try? container.encodeIfPresent(months, forKey: .months)
                
            }
            
        }
        
        /*
            Model: OrderStatuses
            Used By: Order
        */
        class OrderStatuses: Codable {
            
            public var display: String?
            
            public var value: Int?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case value = "value"
                
                case isSelected = "is_selected"
                
            }

            public init(display: String?, isSelected: Bool?, value: Int?) {
                
                self.display = display
                
                self.value = value
                
                self.isSelected = isSelected
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Int.self, forKey: .value)
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
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
            }
            
        }
        
        /*
            Model: OrderMonths
            Used By: Order
        */
        class OrderMonths: Codable {
            
            public var fromDate: String?
            
            public var id: String?
            
            public var isSelected: Bool?
            
            public var name: String?
            
            public var toDate: String?
            
            public var value: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case fromDate = "from_date"
                
                case id = "id"
                
                case isSelected = "is_selected"
                
                case name = "name"
                
                case toDate = "to_date"
                
                case value = "value"
                
            }

            public init(fromDate: String?, id: String?, isSelected: Bool?, name: String?, toDate: String?, value: Int?) {
                
                self.fromDate = fromDate
                
                self.id = id
                
                self.isSelected = isSelected
                
                self.name = name
                
                self.toDate = toDate
                
                self.value = value
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
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
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
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
                    toDate = try container.decode(String.self, forKey: .toDate)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Int.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fromDate, forKey: .fromDate)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(toDate, forKey: .toDate)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
            }
            
        }
        
        /*
            Model: ShipmentById
            Used By: Order
        */
        class ShipmentById: Codable {
            
            public var shipment: Shipments
            

            public enum CodingKeys: String, CodingKey {
                
                case shipment = "shipment"
                
            }

            public init(shipment: Shipments) {
                
                self.shipment = shipment
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                shipment = try container.decode(Shipments.self, forKey: .shipment)
                
                
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
        class ShipmentReasons: Codable {
            
            public var reasons: [Reasons]
            

            public enum CodingKeys: String, CodingKey {
                
                case reasons = "reasons"
                
            }

            public init(reasons: [Reasons]) {
                
                self.reasons = reasons
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                reasons = try container.decode([Reasons].self, forKey: .reasons)
                
                
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
        class ShipmentStatusUpdateBody: Codable {
            
            public var statuses: [StatusesBody]
            
            public var forceTransition: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case statuses = "statuses"
                
                case forceTransition = "force_transition"
                
            }

            public init(forceTransition: Bool, statuses: [StatusesBody]) {
                
                self.statuses = statuses
                
                self.forceTransition = forceTransition
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                statuses = try container.decode([StatusesBody].self, forKey: .statuses)
                
                
                
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(statuses, forKey: .statuses)
                
                try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
                
            }
            
        }
        
        /*
            Model: StatusesBody
            Used By: Order
        */
        class StatusesBody: Codable {
            
            public var status: String?
            
            public var shipments: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case shipments = "shipments"
                
            }

            public init(shipments: [String: Any]?, status: String?) {
                
                self.status = status
                
                self.shipments = shipments
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode([String: Any].self, forKey: .shipments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
            }
            
        }
        
        /*
            Model: ShipmentStatusUpdate
            Used By: Order
        */
        class ShipmentStatusUpdate: Codable {
            
            public var message: [[String: Any]]
            
            public var status: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case status = "status"
                
            }

            public init(message: [[String: Any]], status: Bool) {
                
                self.message = message
                
                self.status = status
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode([[String: Any]].self, forKey: .message)
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
            }
            
        }
        
        /*
            Model: ShipmentTrack
            Used By: Order
        */
        class ShipmentTrack: Codable {
            
            public var results: [Track]
            

            public enum CodingKeys: String, CodingKey {
                
                case results = "results"
                
            }

            public init(results: [Track]) {
                
                self.results = results
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                results = try container.decode([Track].self, forKey: .results)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(results, forKey: .results)
                
            }
            
        }
        
        /*
            Model: OrderSchema
            Used By: Order
        */
        class OrderSchema: Codable {
            
            public var orderId: String?
            
            public var breakupValues: [BreakupValues]?
            
            public var orderCreatedTime: String?
            
            public var shipments: [Shipments]?
            
            public var totalShipmentsInOrder: Int?
            
            public var userInfo: UserInfo?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case breakupValues = "breakup_values"
                
                case orderCreatedTime = "order_created_time"
                
                case shipments = "shipments"
                
                case totalShipmentsInOrder = "total_shipments_in_order"
                
                case userInfo = "user_info"
                
            }

            public init(breakupValues: [BreakupValues]?, orderCreatedTime: String?, orderId: String?, shipments: [Shipments]?, totalShipmentsInOrder: Int?, userInfo: UserInfo?) {
                
                self.orderId = orderId
                
                self.breakupValues = breakupValues
                
                self.orderCreatedTime = orderCreatedTime
                
                self.shipments = shipments
                
                self.totalShipmentsInOrder = totalShipmentsInOrder
                
                self.userInfo = userInfo
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode([Shipments].self, forKey: .shipments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
                
                try? container.encodeIfPresent(userInfo, forKey: .userInfo)
                
            }
            
        }
        
        /*
            Model: PosOrderById
            Used By: Order
        */
        class PosOrderById: Codable {
            
            public var order: OrderSchema
            

            public enum CodingKeys: String, CodingKey {
                
                case order = "order"
                
            }

            public init(order: OrderSchema) {
                
                self.order = order
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                order = try container.decode(OrderSchema.self, forKey: .order)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(order, forKey: .order)
                
            }
            
        }
        
        /*
            Model: Bags
            Used By: Order
        */
        class Bags: Codable {
            
            public var item: Item?
            
            public var prices: Prices?
            
            public var currentStatus: CurrentStatus?
            
            public var id: Int?
            
            public var financialBreakup: [FinancialBreakup]?
            

            public enum CodingKeys: String, CodingKey {
                
                case item = "item"
                
                case prices = "prices"
                
                case currentStatus = "current_status"
                
                case id = "id"
                
                case financialBreakup = "financial_breakup"
                
            }

            public init(currentStatus: CurrentStatus?, financialBreakup: [FinancialBreakup]?, id: Int?, item: Item?, prices: Prices?) {
                
                self.item = item
                
                self.prices = prices
                
                self.currentStatus = currentStatus
                
                self.id = id
                
                self.financialBreakup = financialBreakup
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    item = try container.decode(Item.self, forKey: .item)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(item, forKey: .item)
                
                try? container.encodeIfPresent(prices, forKey: .prices)
                
                try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
                
            }
            
        }
        
        /*
            Model: Item
            Used By: Order
        */
        class Item: Codable {
            
            public var brand: ItemBrand?
            
            public var name: String?
            
            public var size: String?
            
            public var slugKey: String?
            
            public var image: [String]?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case brand = "brand"
                
                case name = "name"
                
                case size = "size"
                
                case slugKey = "slug_key"
                
                case image = "image"
                
                case code = "code"
                
            }

            public init(brand: ItemBrand?, code: String?, image: [String]?, name: String?, size: String?, slugKey: String?) {
                
                self.brand = brand
                
                self.name = name
                
                self.size = size
                
                self.slugKey = slugKey
                
                self.image = image
                
                self.code = code
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    brand = try container.decode(ItemBrand.self, forKey: .brand)
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
                    size = try container.decode(String.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    image = try container.decode([String].self, forKey: .image)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(slugKey, forKey: .slugKey)
                
                try? container.encodeIfPresent(image, forKey: .image)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
            }
            
        }
        
        /*
            Model: Prices
            Used By: Order
        */
        class Prices: Codable {
            
            public var amountPaidRoundoff: Double?
            
            public var fyndCredits: Double?
            
            public var codCharges: Double?
            
            public var cashback: Double?
            
            public var addedToFyndCash: Bool?
            
            public var priceMarked: Double?
            
            public var transferPrice: Double?
            
            public var couponValue: Double?
            
            public var priceEffective: Double?
            
            public var refundCredit: Double?
            
            public var amountPaid: Double?
            
            public var refundAmount: Double?
            
            public var cashbackApplied: Double?
            
            public var gstTaxPercentage: Double?
            
            public var valueOfGood: Double?
            
            public var brandCalculatedAmount: Double?
            
            public var promotionEffectiveDiscount: Double?
            
            public var discount: Double?
            
            public var couponEffectiveDiscount: Double?
            
            public var deliveryCharge: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case amountPaidRoundoff = "amount_paid_roundoff"
                
                case fyndCredits = "fynd_credits"
                
                case codCharges = "cod_charges"
                
                case cashback = "cashback"
                
                case addedToFyndCash = "added_to_fynd_cash"
                
                case priceMarked = "price_marked"
                
                case transferPrice = "transfer_price"
                
                case couponValue = "coupon_value"
                
                case priceEffective = "price_effective"
                
                case refundCredit = "refund_credit"
                
                case amountPaid = "amount_paid"
                
                case refundAmount = "refund_amount"
                
                case cashbackApplied = "cashback_applied"
                
                case gstTaxPercentage = "gst_tax_percentage"
                
                case valueOfGood = "value_of_good"
                
                case brandCalculatedAmount = "brand_calculated_amount"
                
                case promotionEffectiveDiscount = "promotion_effective_discount"
                
                case discount = "discount"
                
                case couponEffectiveDiscount = "coupon_effective_discount"
                
                case deliveryCharge = "delivery_charge"
                
            }

            public init(addedToFyndCash: Bool?, amountPaid: Double?, amountPaidRoundoff: Double?, brandCalculatedAmount: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponEffectiveDiscount: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, gstTaxPercentage: Double?, priceEffective: Double?, priceMarked: Double?, promotionEffectiveDiscount: Double?, refundAmount: Double?, refundCredit: Double?, transferPrice: Double?, valueOfGood: Double?) {
                
                self.amountPaidRoundoff = amountPaidRoundoff
                
                self.fyndCredits = fyndCredits
                
                self.codCharges = codCharges
                
                self.cashback = cashback
                
                self.addedToFyndCash = addedToFyndCash
                
                self.priceMarked = priceMarked
                
                self.transferPrice = transferPrice
                
                self.couponValue = couponValue
                
                self.priceEffective = priceEffective
                
                self.refundCredit = refundCredit
                
                self.amountPaid = amountPaid
                
                self.refundAmount = refundAmount
                
                self.cashbackApplied = cashbackApplied
                
                self.gstTaxPercentage = gstTaxPercentage
                
                self.valueOfGood = valueOfGood
                
                self.brandCalculatedAmount = brandCalculatedAmount
                
                self.promotionEffectiveDiscount = promotionEffectiveDiscount
                
                self.discount = discount
                
                self.couponEffectiveDiscount = couponEffectiveDiscount
                
                self.deliveryCharge = deliveryCharge
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    transferPrice = try container.decode(Double.self, forKey: .transferPrice)
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
                
                
                
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
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
                    couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
                
                try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                try? container.encodeIfPresent(cashback, forKey: .cashback)
                
                try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
                
                try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
                
                try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
                
                try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
                
                try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
                
                try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
                
                try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
                
                try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
                
                try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
                
                try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
                
                try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
            }
            
        }
        
        /*
            Model: CurrentStatus
            Used By: Order
        */
        class CurrentStatus: Codable {
            
            public var updatedAt: String?
            
            public var status: String?
            
            public var name: String?
            
            public var journeyType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case updatedAt = "updated_at"
                
                case status = "status"
                
                case name = "name"
                
                case journeyType = "journey_type"
                
            }

            public init(journeyType: String?, name: String?, status: String?, updatedAt: String?) {
                
                self.updatedAt = updatedAt
                
                self.status = status
                
                self.name = name
                
                self.journeyType = journeyType
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
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
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(journeyType, forKey: .journeyType)
                
            }
            
        }
        
        /*
            Model: FinancialBreakup
            Used By: Order
        */
        class FinancialBreakup: Codable {
            
            public var brandCalculatedAmount: Double?
            
            public var couponValue: Double?
            
            public var amountPaidRoundoff: Double?
            
            public var gstFee: String?
            
            public var refundCredit: Double?
            
            public var cashback: Double?
            
            public var refundAmount: Double?
            
            public var valueOfGood: Double?
            
            public var promotionEffectiveDiscount: Double?
            
            public var size: String?
            
            public var totalUnits: Int?
            
            public var discount: Double?
            
            public var amountPaid: Double?
            
            public var fyndCredits: Double?
            
            public var addedToFyndCash: Bool?
            
            public var deliveryCharge: Double?
            
            public var hsnCode: String?
            
            public var couponEffectiveDiscount: Double?
            
            public var transferPrice: Double?
            
            public var identifiers: Identifiers?
            
            public var gstTag: String?
            
            public var priceMarked: Double?
            
            public var priceEffective: Double?
            
            public var codCharges: Double?
            
            public var itemName: String?
            
            public var cashbackApplied: Double?
            
            public var gstTaxPercentage: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case brandCalculatedAmount = "brand_calculated_amount"
                
                case couponValue = "coupon_value"
                
                case amountPaidRoundoff = "amount_paid_roundoff"
                
                case gstFee = "gst_fee"
                
                case refundCredit = "refund_credit"
                
                case cashback = "cashback"
                
                case refundAmount = "refund_amount"
                
                case valueOfGood = "value_of_good"
                
                case promotionEffectiveDiscount = "promotion_effective_discount"
                
                case size = "size"
                
                case totalUnits = "total_units"
                
                case discount = "discount"
                
                case amountPaid = "amount_paid"
                
                case fyndCredits = "fynd_credits"
                
                case addedToFyndCash = "added_to_fynd_cash"
                
                case deliveryCharge = "delivery_charge"
                
                case hsnCode = "hsn_code"
                
                case couponEffectiveDiscount = "coupon_effective_discount"
                
                case transferPrice = "transfer_price"
                
                case identifiers = "identifiers"
                
                case gstTag = "gst_tag"
                
                case priceMarked = "price_marked"
                
                case priceEffective = "price_effective"
                
                case codCharges = "cod_charges"
                
                case itemName = "item_name"
                
                case cashbackApplied = "cashback_applied"
                
                case gstTaxPercentage = "gst_tax_percentage"
                
            }

            public init(addedToFyndCash: Bool?, amountPaid: Double?, amountPaidRoundoff: Double?, brandCalculatedAmount: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponEffectiveDiscount: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, gstFee: String?, gstTag: String?, gstTaxPercentage: Double?, hsnCode: String?, identifiers: Identifiers?, itemName: String?, priceEffective: Double?, priceMarked: Double?, promotionEffectiveDiscount: Double?, refundAmount: Double?, refundCredit: Double?, size: String?, totalUnits: Int?, transferPrice: Double?, valueOfGood: Double?) {
                
                self.brandCalculatedAmount = brandCalculatedAmount
                
                self.couponValue = couponValue
                
                self.amountPaidRoundoff = amountPaidRoundoff
                
                self.gstFee = gstFee
                
                self.refundCredit = refundCredit
                
                self.cashback = cashback
                
                self.refundAmount = refundAmount
                
                self.valueOfGood = valueOfGood
                
                self.promotionEffectiveDiscount = promotionEffectiveDiscount
                
                self.size = size
                
                self.totalUnits = totalUnits
                
                self.discount = discount
                
                self.amountPaid = amountPaid
                
                self.fyndCredits = fyndCredits
                
                self.addedToFyndCash = addedToFyndCash
                
                self.deliveryCharge = deliveryCharge
                
                self.hsnCode = hsnCode
                
                self.couponEffectiveDiscount = couponEffectiveDiscount
                
                self.transferPrice = transferPrice
                
                self.identifiers = identifiers
                
                self.gstTag = gstTag
                
                self.priceMarked = priceMarked
                
                self.priceEffective = priceEffective
                
                self.codCharges = codCharges
                
                self.itemName = itemName
                
                self.cashbackApplied = cashbackApplied
                
                self.gstTaxPercentage = gstTaxPercentage
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
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
                
                
                
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstFee = try container.decode(String.self, forKey: .gstFee)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
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
                    totalUnits = try container.decode(Int.self, forKey: .totalUnits)
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
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
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
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identifiers = try container.decode(Identifiers.self, forKey: .identifiers)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemName = try container.decode(String.self, forKey: .itemName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
                
                try? container.encodeIfPresent(gstFee, forKey: .gstFee)
                
                try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
                
                try? container.encodeIfPresent(cashback, forKey: .cashback)
                
                try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
                
                try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
                
                try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
                
                try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
                
                try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
                
                try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
                
                try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                try? container.encodeIfPresent(gstTag, forKey: .gstTag)
                
                try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
                
                try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                try? container.encodeIfPresent(itemName, forKey: .itemName)
                
                try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
                
                try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
                
            }
            
        }
        
        /*
            Model: Identifiers
            Used By: Order
        */
        class Identifiers: Codable {
            
            public var ean: String?
            
            public var skuCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case ean = "ean"
                
                case skuCode = "sku_code"
                
            }

            public init(ean: String?, skuCode: String?) {
                
                self.ean = ean
                
                self.skuCode = skuCode
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    ean = try container.decode(String.self, forKey: .ean)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    skuCode = try container.decode(String.self, forKey: .skuCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(ean, forKey: .ean)
                
                try? container.encodeIfPresent(skuCode, forKey: .skuCode)
                
            }
            
        }
        
        /*
            Model: ItemBrand
            Used By: Order
        */
        class ItemBrand: Codable {
            
            public var name: String?
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case logo = "logo"
                
            }

            public init(logo: String?, name: String?) {
                
                self.name = name
                
                self.logo = logo
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: BreakupValues
            Used By: Order
        */
        class BreakupValues: Codable {
            
            public var display: String?
            
            public var value: Double?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case value = "value"
                
                case name = "name"
                
            }

            public init(display: String?, name: String?, value: Double?) {
                
                self.display = display
                
                self.value = value
                
                self.name = name
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
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
                    name = try container.decode(String.self, forKey: .name)
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
                
                try? container.encodeIfPresent(name, forKey: .name)
                
            }
            
        }
        
        /*
            Model: DeliveryAddress
            Used By: Order
        */
        class DeliveryAddress: Codable {
            
            public var pincode: String?
            
            public var landmark: String?
            
            public var contactPerson: String?
            
            public var phone: String?
            
            public var state: String?
            
            public var version: String?
            
            public var address1: String?
            
            public var createdAt: String?
            
            public var addressType: String?
            
            public var addressCategory: String?
            
            public var area: String?
            
            public var city: String?
            
            public var latitude: Double?
            
            public var longitude: Double?
            
            public var email: String?
            
            public var country: String?
            
            public var address2: String?
            
            public var updatedAt: String?
            
            public var name: String?
            
            public var address: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pincode = "pincode"
                
                case landmark = "landmark"
                
                case contactPerson = "contact_person"
                
                case phone = "phone"
                
                case state = "state"
                
                case version = "version"
                
                case address1 = "address1"
                
                case createdAt = "created_at"
                
                case addressType = "address_type"
                
                case addressCategory = "address_category"
                
                case area = "area"
                
                case city = "city"
                
                case latitude = "latitude"
                
                case longitude = "longitude"
                
                case email = "email"
                
                case country = "country"
                
                case address2 = "address2"
                
                case updatedAt = "updated_at"
                
                case name = "name"
                
                case address = "address"
                
            }

            public init(address: String?, address1: String?, address2: String?, addressCategory: String?, addressType: String?, area: String?, city: String?, contactPerson: String?, country: String?, createdAt: String?, email: String?, landmark: String?, latitude: Double?, longitude: Double?, name: String?, phone: String?, pincode: String?, state: String?, updatedAt: String?, version: String?) {
                
                self.pincode = pincode
                
                self.landmark = landmark
                
                self.contactPerson = contactPerson
                
                self.phone = phone
                
                self.state = state
                
                self.version = version
                
                self.address1 = address1
                
                self.createdAt = createdAt
                
                self.addressType = addressType
                
                self.addressCategory = addressCategory
                
                self.area = area
                
                self.city = city
                
                self.latitude = latitude
                
                self.longitude = longitude
                
                self.email = email
                
                self.country = country
                
                self.address2 = address2
                
                self.updatedAt = updatedAt
                
                self.name = name
                
                self.address = address
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
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
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
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
                    version = try container.decode(String.self, forKey: .version)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
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
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
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
                    city = try container.decode(String.self, forKey: .city)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
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
                    address2 = try container.decode(String.self, forKey: .address2)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(version, forKey: .version)
                
                try? container.encodeIfPresent(address1, forKey: .address1)
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(latitude, forKey: .latitude)
                
                try? container.encodeIfPresent(longitude, forKey: .longitude)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(address2, forKey: .address2)
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
            }
            
        }
        
        /*
            Model: FulfillingStore
            Used By: Order
        */
        class FulfillingStore: Codable {
            
            public var code: String?
            
            public var id: Int?
            
            public var name: String?
            
            public var companyId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case id = "id"
                
                case name = "name"
                
                case companyId = "company_id"
                
            }

            public init(code: String?, companyId: Int?, id: Int?, name: String?) {
                
                self.code = code
                
                self.id = id
                
                self.name = name
                
                self.companyId = companyId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(companyId, forKey: .companyId)
                
            }
            
        }
        
        /*
            Model: Invoice
            Used By: Order
        */
        class Invoice: Codable {
            
            public var updatedDate: String?
            
            public var invoiceUrl: String?
            
            public var labelUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case updatedDate = "updated_date"
                
                case invoiceUrl = "invoice_url"
                
                case labelUrl = "label_url"
                
            }

            public init(invoiceUrl: String?, labelUrl: String?, updatedDate: String?) {
                
                self.updatedDate = updatedDate
                
                self.invoiceUrl = invoiceUrl
                
                self.labelUrl = labelUrl
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    updatedDate = try container.decode(String.self, forKey: .updatedDate)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    labelUrl = try container.decode(String.self, forKey: .labelUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)
                
                try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
                
                try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
                
            }
            
        }
        
        /*
            Model: Promise
            Used By: Order
        */
        class Promise: Codable {
            
            public var timestamp: Timestamp?
            

            public enum CodingKeys: String, CodingKey {
                
                case timestamp = "timestamp"
                
            }

            public init(timestamp: Timestamp?) {
                
                self.timestamp = timestamp
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    timestamp = try container.decode(Timestamp.self, forKey: .timestamp)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
            }
            
        }
        
        /*
            Model: Timestamp
            Used By: Order
        */
        class Timestamp: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(String.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
            }
            
        }
        
        /*
            Model: Reasons
            Used By: Order
        */
        class Reasons: Codable {
            
            public var reasonText: String?
            
            public var showTextArea: Bool?
            
            public var feedbackType: String?
            
            public var flow: String?
            
            public var reasonId: Int?
            
            public var priority: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case reasonText = "reason_text"
                
                case showTextArea = "show_text_area"
                
                case feedbackType = "feedback_type"
                
                case flow = "flow"
                
                case reasonId = "reason_id"
                
                case priority = "priority"
                
            }

            public init(feedbackType: String?, flow: String?, priority: Int?, reasonId: Int?, reasonText: String?, showTextArea: Bool?) {
                
                self.reasonText = reasonText
                
                self.showTextArea = showTextArea
                
                self.feedbackType = feedbackType
                
                self.flow = flow
                
                self.reasonId = reasonId
                
                self.priority = priority
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    reasonText = try container.decode(String.self, forKey: .reasonText)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    showTextArea = try container.decode(Bool.self, forKey: .showTextArea)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    feedbackType = try container.decode(String.self, forKey: .feedbackType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    flow = try container.decode(String.self, forKey: .flow)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    reasonId = try container.decode(Int.self, forKey: .reasonId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(reasonText, forKey: .reasonText)
                
                try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
                
                try? container.encodeIfPresent(feedbackType, forKey: .feedbackType)
                
                try? container.encodeIfPresent(flow, forKey: .flow)
                
                try? container.encodeIfPresent(reasonId, forKey: .reasonId)
                
                try? container.encodeIfPresent(priority, forKey: .priority)
                
            }
            
        }
        
        /*
            Model: ShipmentStatus
            Used By: Order
        */
        class ShipmentStatus: Codable {
            
            public var title: String?
            
            public var hexCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case hexCode = "hex_code"
                
            }

            public init(hexCode: String?, title: String?) {
                
                self.title = title
                
                self.hexCode = hexCode
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hexCode = try container.decode(String.self, forKey: .hexCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(hexCode, forKey: .hexCode)
                
            }
            
        }
        
        /*
            Model: ShipmentUserInfo
            Used By: Order
        */
        class ShipmentUserInfo: Codable {
            
            public var gender: String?
            
            public var mobile: String?
            
            public var firstName: String?
            
            public var lastName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gender = "gender"
                
                case mobile = "mobile"
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
            }

            public init(firstName: String?, gender: String?, lastName: String?, mobile: String?) {
                
                self.gender = gender
                
                self.mobile = mobile
                
                self.firstName = firstName
                
                self.lastName = lastName
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
            }
            
        }
        
        /*
            Model: Shipments
            Used By: Order
        */
        class Shipments: Codable {
            
            public var orderId: String?
            
            public var breakupValues: [BreakupValues]?
            
            public var trackUrl: String?
            
            public var trakingNo: String?
            
            public var trackingDetails: [TrackingDetails]?
            
            public var beneficiaryDetails: Bool?
            
            public var canReturn: Bool?
            
            public var prices: Prices?
            
            public var needHelpUrl: String?
            
            public var shipmentId: String?
            
            public var totalBags: Int?
            
            public var deliveryAddress: DeliveryAddress?
            
            public var invoice: Invoice?
            
            public var comment: String?
            
            public var orderType: String?
            
            public var promise: Promise?
            
            public var fulfillingStore: FulfillingStore?
            
            public var bags: [Bags]?
            
            public var canCancel: Bool?
            
            public var payment: ShipmentPayment?
            
            public var shipmentCreatedAt: String?
            
            public var shipmentStatus: ShipmentStatus?
            
            public var userInfo: ShipmentUserInfo?
            
            public var sizeInfo: [String: Any]?
            
            public var totalDetails: ShipmentTotalDetails?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case breakupValues = "breakup_values"
                
                case trackUrl = "track_url"
                
                case trakingNo = "traking_no"
                
                case trackingDetails = "tracking_details"
                
                case beneficiaryDetails = "beneficiary_details"
                
                case canReturn = "can_return"
                
                case prices = "prices"
                
                case needHelpUrl = "need_help_url"
                
                case shipmentId = "shipment_id"
                
                case totalBags = "total_bags"
                
                case deliveryAddress = "delivery_address"
                
                case invoice = "invoice"
                
                case comment = "comment"
                
                case orderType = "order_type"
                
                case promise = "promise"
                
                case fulfillingStore = "fulfilling_store"
                
                case bags = "bags"
                
                case canCancel = "can_cancel"
                
                case payment = "payment"
                
                case shipmentCreatedAt = "shipment_created_at"
                
                case shipmentStatus = "shipment_status"
                
                case userInfo = "user_info"
                
                case sizeInfo = "size_info"
                
                case totalDetails = "total_details"
                
            }

            public init(bags: [Bags]?, beneficiaryDetails: Bool?, breakupValues: [BreakupValues]?, canCancel: Bool?, canReturn: Bool?, comment: String?, deliveryAddress: DeliveryAddress?, fulfillingStore: FulfillingStore?, invoice: Invoice?, needHelpUrl: String?, orderId: String?, orderType: String?, payment: ShipmentPayment?, prices: Prices?, promise: Promise?, shipmentCreatedAt: String?, shipmentId: String?, shipmentStatus: ShipmentStatus?, sizeInfo: [String: Any]?, totalBags: Int?, totalDetails: ShipmentTotalDetails?, trackingDetails: [TrackingDetails]?, trackUrl: String?, trakingNo: String?, userInfo: ShipmentUserInfo?) {
                
                self.orderId = orderId
                
                self.breakupValues = breakupValues
                
                self.trackUrl = trackUrl
                
                self.trakingNo = trakingNo
                
                self.trackingDetails = trackingDetails
                
                self.beneficiaryDetails = beneficiaryDetails
                
                self.canReturn = canReturn
                
                self.prices = prices
                
                self.needHelpUrl = needHelpUrl
                
                self.shipmentId = shipmentId
                
                self.totalBags = totalBags
                
                self.deliveryAddress = deliveryAddress
                
                self.invoice = invoice
                
                self.comment = comment
                
                self.orderType = orderType
                
                self.promise = promise
                
                self.fulfillingStore = fulfillingStore
                
                self.bags = bags
                
                self.canCancel = canCancel
                
                self.payment = payment
                
                self.shipmentCreatedAt = shipmentCreatedAt
                
                self.shipmentStatus = shipmentStatus
                
                self.userInfo = userInfo
                
                self.sizeInfo = sizeInfo
                
                self.totalDetails = totalDetails
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    trackUrl = try container.decode(String.self, forKey: .trackUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    trakingNo = try container.decode(String.self, forKey: .trakingNo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    trackingDetails = try container.decode([TrackingDetails].self, forKey: .trackingDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    needHelpUrl = try container.decode(String.self, forKey: .needHelpUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    totalBags = try container.decode(Int.self, forKey: .totalBags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    invoice = try container.decode(Invoice.self, forKey: .invoice)
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
                    orderType = try container.decode(String.self, forKey: .orderType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promise = try container.decode(Promise.self, forKey: .promise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bags = try container.decode([Bags].self, forKey: .bags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    payment = try container.decode(ShipmentPayment.self, forKey: .payment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userInfo = try container.decode(ShipmentUserInfo.self, forKey: .userInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeInfo = try container.decode([String: Any].self, forKey: .sizeInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    totalDetails = try container.decode(ShipmentTotalDetails.self, forKey: .totalDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
                
                try? container.encodeIfPresent(trakingNo, forKey: .trakingNo)
                
                try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)
                
                try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
                
                try? container.encodeIfPresent(canReturn, forKey: .canReturn)
                
                try? container.encodeIfPresent(prices, forKey: .prices)
                
                try? container.encodeIfPresent(needHelpUrl, forKey: .needHelpUrl)
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                try? container.encodeIfPresent(totalBags, forKey: .totalBags)
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                try? container.encodeIfPresent(invoice, forKey: .invoice)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
                
                try? container.encodeIfPresent(bags, forKey: .bags)
                
                try? container.encodeIfPresent(canCancel, forKey: .canCancel)
                
                try? container.encodeIfPresent(payment, forKey: .payment)
                
                try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
                
                try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
                
                try? container.encodeIfPresent(userInfo, forKey: .userInfo)
                
                try? container.encodeIfPresent(sizeInfo, forKey: .sizeInfo)
                
                try? container.encodeIfPresent(totalDetails, forKey: .totalDetails)
                
            }
            
        }
        
        /*
            Model: ShipmentTotalDetails
            Used By: Order
        */
        class ShipmentTotalDetails: Codable {
            
            public var totalPrice: Double?
            
            public var sizes: Int?
            
            public var pieces: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case totalPrice = "total_price"
                
                case sizes = "sizes"
                
                case pieces = "pieces"
                
            }

            public init(pieces: Int?, sizes: Int?, totalPrice: Double?) {
                
                self.totalPrice = totalPrice
                
                self.sizes = sizes
                
                self.pieces = pieces
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    totalPrice = try container.decode(Double.self, forKey: .totalPrice)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode(Int.self, forKey: .sizes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pieces = try container.decode(Int.self, forKey: .pieces)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(pieces, forKey: .pieces)
                
            }
            
        }
        
        /*
            Model: ShipmentPayment
            Used By: Order
        */
        class ShipmentPayment: Codable {
            
            public var logo: String?
            
            public var mode: String?
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case mode = "mode"
                
                case status = "status"
                
            }

            public init(logo: String?, mode: String?, status: String?) {
                
                self.logo = logo
                
                self.mode = mode
                
                self.status = status
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(mode, forKey: .mode)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
            }
            
        }
        
        /*
            Model: Track
            Used By: Order
        */
        class Track: Codable {
            
            public var awb: String?
            
            public var updatedAt: String?
            
            public var lastLocationRecievedAt: String?
            
            public var reason: String?
            
            public var shipmentType: String?
            
            public var status: String?
            
            public var updatedTime: String?
            
            public var accountName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case awb = "awb"
                
                case updatedAt = "updated_at"
                
                case lastLocationRecievedAt = "last_location_recieved_at"
                
                case reason = "reason"
                
                case shipmentType = "shipment_type"
                
                case status = "status"
                
                case updatedTime = "updated_time"
                
                case accountName = "account_name"
                
            }

            public init(accountName: String?, awb: String?, lastLocationRecievedAt: String?, reason: String?, shipmentType: String?, status: String?, updatedAt: String?, updatedTime: String?) {
                
                self.awb = awb
                
                self.updatedAt = updatedAt
                
                self.lastLocationRecievedAt = lastLocationRecievedAt
                
                self.reason = reason
                
                self.shipmentType = shipmentType
                
                self.status = status
                
                self.updatedTime = updatedTime
                
                self.accountName = accountName
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    awb = try container.decode(String.self, forKey: .awb)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastLocationRecievedAt = try container.decode(String.self, forKey: .lastLocationRecievedAt)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    reason = try container.decode(String.self, forKey: .reason)
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
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    updatedTime = try container.decode(String.self, forKey: .updatedTime)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    accountName = try container.decode(String.self, forKey: .accountName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(awb, forKey: .awb)
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                try? container.encodeIfPresent(lastLocationRecievedAt, forKey: .lastLocationRecievedAt)
                
                try? container.encodeIfPresent(reason, forKey: .reason)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(updatedTime, forKey: .updatedTime)
                
                try? container.encodeIfPresent(accountName, forKey: .accountName)
                
            }
            
        }
        
        /*
            Model: TrackingDetails
            Used By: Order
        */
        class TrackingDetails: Codable {
            
            public var isCurrent: Bool?
            
            public var status: String?
            
            public var time: String?
            
            public var isPassed: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isCurrent = "is_current"
                
                case status = "status"
                
                case time = "time"
                
                case isPassed = "is_passed"
                
            }

            public init(isCurrent: Bool?, isPassed: String?, status: String?, time: String?) {
                
                self.isCurrent = isCurrent
                
                self.status = status
                
                self.time = time
                
                self.isPassed = isPassed
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isCurrent = try container.decode(Bool.self, forKey: .isCurrent)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    time = try container.decode(String.self, forKey: .time)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isPassed = try container.decode(String.self, forKey: .isPassed)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(time, forKey: .time)
                
                try? container.encodeIfPresent(isPassed, forKey: .isPassed)
                
            }
            
        }
        
        /*
            Model: UserInfo
            Used By: Order
        */
        class UserInfo: Codable {
            
            public var gender: String?
            
            public var mobile: String?
            
            public var name: String?
            
            public var email: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gender = "gender"
                
                case mobile = "mobile"
                
                case name = "name"
                
                case email = "email"
                
            }

            public init(email: String?, gender: String?, mobile: String?, name: String?) {
                
                self.gender = gender
                
                self.mobile = mobile
                
                self.name = name
                
                self.email = email
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
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
                    email = try container.decode(String.self, forKey: .email)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
            }
            
        }
        
        /*
            Model: ApefaceApiError
            Used By: Order
        */
        class ApefaceApiError: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            required public init(from decoder: Decoder) throws {
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
            Model: GetPincodeCityResponse
            Used By: Logistic
        */
        class GetPincodeCityResponse: Codable {
            
            public var requestUuid: String
            
            public var stormbreakerUuid: String
            
            public var success: Bool
            
            public var data: [LogisticPincodeData]
            

            public enum CodingKeys: String, CodingKey {
                
                case requestUuid = "request_uuid"
                
                case stormbreakerUuid = "stormbreaker_uuid"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [LogisticPincodeData], requestUuid: String, stormbreakerUuid: String, success: Bool) {
                
                self.requestUuid = requestUuid
                
                self.stormbreakerUuid = stormbreakerUuid
                
                self.success = success
                
                self.data = data
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
                
                
                
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                data = try container.decode([LogisticPincodeData].self, forKey: .data)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
                
                try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
            }
            
        }
        
        /*
            Model: LogisticPincodeData
            Used By: Logistic
        */
        class LogisticPincodeData: Codable {
            
            public var meta: LogisticMeta?
            
            public var parents: [LogisticParents]?
            
            public var subType: String?
            
            public var name: String?
            
            public var error: LogisticError?
            
            public var uid: String?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case parents = "parents"
                
                case subType = "sub_type"
                
                case name = "name"
                
                case error = "error"
                
                case uid = "uid"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String?, error: LogisticError?, meta: LogisticMeta?, name: String?, parents: [LogisticParents]?, subType: String?, uid: String?) {
                
                self.meta = meta
                
                self.parents = parents
                
                self.subType = subType
                
                self.name = name
                
                self.error = error
                
                self.uid = uid
                
                self.displayName = displayName
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    meta = try container.decode(LogisticMeta.self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    parents = try container.decode([LogisticParents].self, forKey: .parents)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subType = try container.decode(String.self, forKey: .subType)
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
                    error = try container.decode(LogisticError.self, forKey: .error)
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(parents, forKey: .parents)
                
                try? container.encodeIfPresent(subType, forKey: .subType)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
            }
            
        }
        
        /*
            Model: LogisticMeta
            Used By: Logistic
        */
        class LogisticMeta: Codable {
            
            public var zone: String?
            
            public var deliverables: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case zone = "zone"
                
                case deliverables = "deliverables"
                
            }

            public init(deliverables: [[String: Any]]?, zone: String?) {
                
                self.zone = zone
                
                self.deliverables = deliverables
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    zone = try container.decode(String.self, forKey: .zone)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliverables = try container.decode([[String: Any]].self, forKey: .deliverables)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(zone, forKey: .zone)
                
                try? container.encodeIfPresent(deliverables, forKey: .deliverables)
                
            }
            
        }
        
        /*
            Model: LogisticParents
            Used By: Logistic
        */
        class LogisticParents: Codable {
            
            public var subType: String?
            
            public var name: String?
            
            public var displayName: String?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case subType = "sub_type"
                
                case name = "name"
                
                case displayName = "display_name"
                
                case uid = "uid"
                
            }

            public init(displayName: String?, name: String?, subType: String?, uid: String?) {
                
                self.subType = subType
                
                self.name = name
                
                self.displayName = displayName
                
                self.uid = uid
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    subType = try container.decode(String.self, forKey: .subType)
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
                    displayName = try container.decode(String.self, forKey: .displayName)
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
                
                try? container.encodeIfPresent(subType, forKey: .subType)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: LogisticError
            Used By: Logistic
        */
        class LogisticError: Codable {
            
            public var type: String?
            
            public var value: String?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case value = "value"
                
                case message = "message"
                
            }

            public init(message: String?, type: String?, value: String?) {
                
                self.type = type
                
                self.value = value
                
                self.message = message
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
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
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: GetTatProductReqBody
            Used By: Logistic
        */
        class GetTatProductReqBody: Codable {
            
            public var locationDetails: [LocationDetailsReq]
            
            public var toPincode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case locationDetails = "location_details"
                
                case toPincode = "to_pincode"
                
            }

            public init(locationDetails: [LocationDetailsReq], toPincode: String) {
                
                self.locationDetails = locationDetails
                
                self.toPincode = toPincode
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                locationDetails = try container.decode([LocationDetailsReq].self, forKey: .locationDetails)
                
                
                
                toPincode = try container.decode(String.self, forKey: .toPincode)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
                
                try? container.encodeIfPresent(toPincode, forKey: .toPincode)
                
            }
            
        }
        
        /*
            Model: LocationDetailsReq
            Used By: Logistic
        */
        class LocationDetailsReq: Codable {
            
            public var fromPincode: String?
            
            public var articles: [TatReqProductArticles]?
            
            public var fulfillmentId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case fromPincode = "from_pincode"
                
                case articles = "articles"
                
                case fulfillmentId = "fulfillment_id"
                
            }

            public init(articles: [TatReqProductArticles]?, fromPincode: String?, fulfillmentId: Int?) {
                
                self.fromPincode = fromPincode
                
                self.articles = articles
                
                self.fulfillmentId = fulfillmentId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fromPincode = try container.decode(String.self, forKey: .fromPincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articles = try container.decode([TatReqProductArticles].self, forKey: .articles)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)
                
                try? container.encodeIfPresent(articles, forKey: .articles)
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
            }
            
        }
        
        /*
            Model: TatReqProductArticles
            Used By: Logistic
        */
        class TatReqProductArticles: Codable {
            
            public var category: LogisticRequestCategory?
            

            public enum CodingKeys: String, CodingKey {
                
                case category = "category"
                
            }

            public init(category: LogisticRequestCategory?) {
                
                self.category = category
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    category = try container.decode(LogisticRequestCategory.self, forKey: .category)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(category, forKey: .category)
                
            }
            
        }
        
        /*
            Model: LogisticRequestCategory
            Used By: Logistic
        */
        class LogisticRequestCategory: Codable {
            
            public var id: Int?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case level = "level"
                
            }

            public init(id: Int?, level: String?) {
                
                self.id = id
                
                self.level = level
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
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
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(level, forKey: .level)
                
            }
            
        }
        
        /*
            Model: GetTatProductResponse
            Used By: Logistic
        */
        class GetTatProductResponse: Codable {
            
            public var locationDetails: LocationDetails
            
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

            public init(action: String, error: [String: Any], identifier: String, journey: String, locationDetails: LocationDetails, requestUuid: String, source: String, stormbreakerUuid: String, success: Bool, toCity: String, toPincode: String) {
                
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)
                
                
                
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
        
        /*
            Model: LocationDetails
            Used By: Logistic
        */
        class LocationDetails: Codable {
            
            public var fromPincode: String?
            
            public var articles: TatProductArticles?
            
            public var fulfillmentId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case fromPincode = "from_pincode"
                
                case articles = "articles"
                
                case fulfillmentId = "fulfillment_id"
                
            }

            public init(articles: TatProductArticles?, fromPincode: String?, fulfillmentId: Int?) {
                
                self.fromPincode = fromPincode
                
                self.articles = articles
                
                self.fulfillmentId = fulfillmentId
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fromPincode = try container.decode(String.self, forKey: .fromPincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articles = try container.decode(TatProductArticles.self, forKey: .articles)
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)
                
                try? container.encodeIfPresent(articles, forKey: .articles)
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
            }
            
        }
        
        /*
            Model: TatProductArticles
            Used By: Logistic
        */
        class TatProductArticles: Codable {
            
            public var error: [String: Any]?
            
            public var category: LogisticResponseCategory?
            
            public var promise: LogisticPromise?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case category = "category"
                
                case promise = "promise"
                
            }

            public init(category: LogisticResponseCategory?, error: [String: Any]?, promise: LogisticPromise?) {
                
                self.error = error
                
                self.category = category
                
                self.promise = promise
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    category = try container.decode(LogisticResponseCategory.self, forKey: .category)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promise = try container.decode(LogisticPromise.self, forKey: .promise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                try? container.encodeIfPresent(category, forKey: .category)
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
            }
            
        }
        
        /*
            Model: LogisticResponseCategory
            Used By: Logistic
        */
        class LogisticResponseCategory: Codable {
            
            public var id: Int?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case level = "level"
                
            }

            public init(id: Int?, level: String?) {
                
                self.id = id
                
                self.level = level
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
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
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(level, forKey: .level)
                
            }
            
        }
        
        /*
            Model: LogisticPromise
            Used By: Logistic
        */
        class LogisticPromise: Codable {
            
            public var timestamp: LogisticTimestamp?
            
            public var formatted: Formatted?
            

            public enum CodingKeys: String, CodingKey {
                
                case timestamp = "timestamp"
                
                case formatted = "formatted"
                
            }

            public init(formatted: Formatted?, timestamp: LogisticTimestamp?) {
                
                self.timestamp = timestamp
                
                self.formatted = formatted
                
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    timestamp = try container.decode(LogisticTimestamp.self, forKey: .timestamp)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    formatted = try container.decode(Formatted.self, forKey: .formatted)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
            }
            
        }
        
        /*
            Model: LogisticTimestamp
            Used By: Logistic
        */
        class LogisticTimestamp: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(Int.self, forKey: .min)
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
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
            }
            
        }
        
        /*
            Model: Formatted
            Used By: Logistic
        */
        class Formatted: Codable {
            
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

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(String.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
            }
            
        }
        
        
    }