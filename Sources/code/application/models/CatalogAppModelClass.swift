import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: ProductListingActionPage
            Used By: Catalog
        */
        class ProductListingActionPage: Codable {
            
            public var params: [String: Any]?
            
            public var type: String?
            
            public var query: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case params = "params"
                
                case type = "type"
                
                case query = "query"
                
            }

            public init(params: [String: Any]?, query: [String: Any]?, type: String?) {
                
                self.params = params
                
                self.type = type
                
                self.query = query
                
            }

            public func duplicate() -> ProductListingActionPage {
                let dict = self.dictionary!
                let copy = ProductListingActionPage(dictionary: dict)!
                return copy
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
                
                
                
                try? container.encodeIfPresent(params, forKey: .params)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
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

            public func duplicate() -> ProductListingAction {
                let dict = self.dictionary!
                let copy = ProductListingAction(dictionary: dict)!
                return copy
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
            Model: MetaFields
            Used By: Catalog
        */
        class MetaFields: Codable {
            
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

            public func duplicate() -> MetaFields {
                let dict = self.dictionary!
                let copy = MetaFields(dictionary: dict)!
                return copy
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
            Model: ProductDetailAttribute
            Used By: Catalog
        */
        class ProductDetailAttribute: Codable {
            
            public var key: String?
            
            public var type: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case type = "type"
                
                case value = "value"
                
            }

            public init(key: String?, type: String?, value: String?) {
                
                self.key = key
                
                self.type = type
                
                self.value = value
                
            }

            public func duplicate() -> ProductDetailAttribute {
                let dict = self.dictionary!
                let copy = ProductDetailAttribute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ProductDetailGroupedAttribute
            Used By: Catalog
        */
        class ProductDetailGroupedAttribute: Codable {
            
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

            public func duplicate() -> ProductDetailGroupedAttribute {
                let dict = self.dictionary!
                let copy = ProductDetailGroupedAttribute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
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
            Model: Meta
            Used By: Catalog
        */
        class Meta: Codable {
            
            public var source: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case source = "source"
                
            }

            public init(source: String?) {
                
                self.source = source
                
            }

            public func duplicate() -> Meta {
                let dict = self.dictionary!
                let copy = Meta(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
            }
            
        }
        
        /*
            Model: Media
            Used By: Catalog
        */
        class Media: Codable {
            
            public var url: String?
            
            public var type: String?
            
            public var meta: Meta?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case type = "type"
                
                case meta = "meta"
                
            }

            public init(meta: Meta?, type: String?, url: String?) {
                
                self.url = url
                
                self.type = type
                
                self.meta = meta
                
            }

            public func duplicate() -> Media {
                let dict = self.dictionary!
                let copy = Media(dictionary: dict)!
                return copy
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
                
                
                
                do {
                    meta = try container.decode(Meta.self, forKey: .meta)
                
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
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
            }
            
        }
        
        /*
            Model: ProductBrand
            Used By: Catalog
        */
        class ProductBrand: Codable {
            
            public var uid: Int?
            
            public var name: String?
            
            public var logo: Media?
            
            public var action: ProductListingAction?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
                case logo = "logo"
                
                case action = "action"
                
            }

            public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.name = name
                
                self.logo = logo
                
                self.action = action
                
            }

            public func duplicate() -> ProductBrand {
                let dict = self.dictionary!
                let copy = ProductBrand(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
            }
            
        }
        
        /*
            Model: Price
            Used By: Catalog
        */
        class Price: Codable {
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var min: Double?
            
            public var max: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.min = min
                
                self.max = max
                
            }

            public func duplicate() -> Price {
                let dict = self.dictionary!
                let copy = Price(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
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
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
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

            public func duplicate() -> ProductListingPrice {
                let dict = self.dictionary!
                let copy = ProductListingPrice(dictionary: dict)!
                return copy
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
            Model: ProductDetail
            Used By: Catalog
        */
        class ProductDetail: Codable {
            
            public var attributes: [String: Any]?
            
            public var color: String?
            
            public var type: String?
            
            public var shortDescription: String?
            
            public var action: ProductListingAction?
            
            public var rating: Double?
            
            public var tryouts: [String]?
            
            public var customMeta: [MetaFields]?
            
            public var ratingCount: Int?
            
            public var discount: String?
            
            public var hasVariant: Bool?
            
            public var productOnlineDate: String?
            
            public var itemType: String?
            
            public var description: String?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var name: String?
            
            public var imageNature: String?
            
            public var brand: ProductBrand?
            
            public var uid: Int?
            
            public var medias: [Media]?
            
            public var categories: [ProductBrand]?
            
            public var slug: String
            
            public var price: ProductListingPrice?
            
            public var teaserTag: String?
            
            public var itemCode: String?
            
            public var highlights: [String]?
            
            public var similars: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case attributes = "attributes"
                
                case color = "color"
                
                case type = "type"
                
                case shortDescription = "short_description"
                
                case action = "action"
                
                case rating = "rating"
                
                case tryouts = "tryouts"
                
                case customMeta = "_custom_meta"
                
                case ratingCount = "rating_count"
                
                case discount = "discount"
                
                case hasVariant = "has_variant"
                
                case productOnlineDate = "product_online_date"
                
                case itemType = "item_type"
                
                case description = "description"
                
                case groupedAttributes = "grouped_attributes"
                
                case name = "name"
                
                case imageNature = "image_nature"
                
                case brand = "brand"
                
                case uid = "uid"
                
                case medias = "medias"
                
                case categories = "categories"
                
                case slug = "slug"
                
                case price = "price"
                
                case teaserTag = "teaser_tag"
                
                case itemCode = "item_code"
                
                case highlights = "highlights"
                
                case similars = "similars"
                
            }

            public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, customMeta: [MetaFields]?) {
                
                self.attributes = attributes
                
                self.color = color
                
                self.type = type
                
                self.shortDescription = shortDescription
                
                self.action = action
                
                self.rating = rating
                
                self.tryouts = tryouts
                
                self.customMeta = customMeta
                
                self.ratingCount = ratingCount
                
                self.discount = discount
                
                self.hasVariant = hasVariant
                
                self.productOnlineDate = productOnlineDate
                
                self.itemType = itemType
                
                self.description = description
                
                self.groupedAttributes = groupedAttributes
                
                self.name = name
                
                self.imageNature = imageNature
                
                self.brand = brand
                
                self.uid = uid
                
                self.medias = medias
                
                self.categories = categories
                
                self.slug = slug
                
                self.price = price
                
                self.teaserTag = teaserTag
                
                self.itemCode = itemCode
                
                self.highlights = highlights
                
                self.similars = similars
                
            }

            public func duplicate() -> ProductDetail {
                let dict = self.dictionary!
                let copy = ProductDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customMeta = try container.decode([MetaFields].self, forKey: .customMeta)
                
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
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                
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
                    groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
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
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
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
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
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
                    similars = try container.decode([String].self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                
                
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                
                
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                
                
                
                try? container.encodeIfPresent(customMeta, forKey: .customMeta)
                
                
                
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                
                
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                
                
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                
                
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                
                
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                
                
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                
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

            public func duplicate() -> ErrorResponse {
                let dict = self.dictionary!
                let copy = ErrorResponse(dictionary: dict)!
                return copy
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
            Model: SizeChartValues
            Used By: Catalog
        */
        class SizeChartValues: Codable {
            
            public var col3: String?
            
            public var col4: String?
            
            public var col1: String?
            
            public var col2: String?
            
            public var col6: String?
            
            public var col5: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case col3 = "col_3"
                
                case col4 = "col_4"
                
                case col1 = "col_1"
                
                case col2 = "col_2"
                
                case col6 = "col_6"
                
                case col5 = "col_5"
                
            }

            public init(col1: String?, col2: String?, col3: String?, col4: String?, col5: String?, col6: String?) {
                
                self.col3 = col3
                
                self.col4 = col4
                
                self.col1 = col1
                
                self.col2 = col2
                
                self.col6 = col6
                
                self.col5 = col5
                
            }

            public func duplicate() -> SizeChartValues {
                let dict = self.dictionary!
                let copy = SizeChartValues(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    col3 = try container.decode(String.self, forKey: .col3)
                
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
                    col1 = try container.decode(String.self, forKey: .col1)
                
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
                
                
                
                do {
                    col6 = try container.decode(String.self, forKey: .col6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col5 = try container.decode(String.self, forKey: .col5)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(col3, forKey: .col3)
                
                
                
                
                try? container.encodeIfPresent(col4, forKey: .col4)
                
                
                
                
                try? container.encodeIfPresent(col1, forKey: .col1)
                
                
                
                
                try? container.encodeIfPresent(col2, forKey: .col2)
                
                
                
                
                try? container.encodeIfPresent(col6, forKey: .col6)
                
                
                
                
                try? container.encodeIfPresent(col5, forKey: .col5)
                
                
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

            public func duplicate() -> ColumnHeader {
                let dict = self.dictionary!
                let copy = ColumnHeader(dictionary: dict)!
                return copy
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
            
            public var col3: ColumnHeader?
            
            public var col4: ColumnHeader?
            
            public var col1: ColumnHeader?
            
            public var col2: ColumnHeader?
            
            public var col6: ColumnHeader?
            
            public var col5: ColumnHeader?
            

            public enum CodingKeys: String, CodingKey {
                
                case col3 = "col_3"
                
                case col4 = "col_4"
                
                case col1 = "col_1"
                
                case col2 = "col_2"
                
                case col6 = "col_6"
                
                case col5 = "col_5"
                
            }

            public init(col1: ColumnHeader?, col2: ColumnHeader?, col3: ColumnHeader?, col4: ColumnHeader?, col5: ColumnHeader?, col6: ColumnHeader?) {
                
                self.col3 = col3
                
                self.col4 = col4
                
                self.col1 = col1
                
                self.col2 = col2
                
                self.col6 = col6
                
                self.col5 = col5
                
            }

            public func duplicate() -> ColumnHeaders {
                let dict = self.dictionary!
                let copy = ColumnHeaders(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    col3 = try container.decode(ColumnHeader.self, forKey: .col3)
                
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
                    col1 = try container.decode(ColumnHeader.self, forKey: .col1)
                
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
                
                
                
                do {
                    col6 = try container.decode(ColumnHeader.self, forKey: .col6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col5 = try container.decode(ColumnHeader.self, forKey: .col5)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(col3, forKey: .col3)
                
                
                
                
                try? container.encodeIfPresent(col4, forKey: .col4)
                
                
                
                
                try? container.encodeIfPresent(col1, forKey: .col1)
                
                
                
                
                try? container.encodeIfPresent(col2, forKey: .col2)
                
                
                
                
                try? container.encodeIfPresent(col6, forKey: .col6)
                
                
                
                
                try? container.encodeIfPresent(col5, forKey: .col5)
                
                
            }
            
        }
        
        /*
            Model: SizeChart
            Used By: Catalog
        */
        class SizeChart: Codable {
            
            public var sizes: [SizeChartValues]?
            
            public var description: String?
            
            public var image: String?
            
            public var headers: ColumnHeaders?
            
            public var unit: String?
            
            public var sizeTip: String?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizes = "sizes"
                
                case description = "description"
                
                case image = "image"
                
                case headers = "headers"
                
                case unit = "unit"
                
                case sizeTip = "size_tip"
                
                case title = "title"
                
            }

            public init(description: String?, headers: ColumnHeaders?, image: String?, sizes: [SizeChartValues]?, sizeTip: String?, title: String?, unit: String?) {
                
                self.sizes = sizes
                
                self.description = description
                
                self.image = image
                
                self.headers = headers
                
                self.unit = unit
                
                self.sizeTip = sizeTip
                
                self.title = title
                
            }

            public func duplicate() -> SizeChart {
                let dict = self.dictionary!
                let copy = SizeChart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sizes = try container.decode([SizeChartValues].self, forKey: .sizes)
                
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
                    image = try container.decode(String.self, forKey: .image)
                
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
                    sizeTip = try container.decode(String.self, forKey: .sizeTip)
                
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
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(image, forKey: .image)
                
                
                
                
                try? container.encodeIfPresent(headers, forKey: .headers)
                
                
                
                
                try? container.encodeIfPresent(unit, forKey: .unit)
                
                
                
                
                try? container.encodeIfPresent(sizeTip, forKey: .sizeTip)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
            }
            
        }
        
        /*
            Model: ProductSize
            Used By: Catalog
        */
        class ProductSize: Codable {
            
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

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.value = value
                
                self.quantity = quantity
                
                self.display = display
                
                self.isAvailable = isAvailable
                
            }

            public func duplicate() -> ProductSize {
                let dict = self.dictionary!
                let copy = ProductSize(dictionary: dict)!
                return copy
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
        class ProductSizeStores: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
            }

            public func duplicate() -> ProductSizeStores {
                let dict = self.dictionary!
                let copy = ProductSizeStores(dictionary: dict)!
                return copy
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
            Model: ProductSizes
            Used By: Catalog
        */
        class ProductSizes: Codable {
            
            public var price: ProductListingPrice?
            
            public var sizeChart: SizeChart?
            
            public var sizes: [ProductSize]?
            
            public var discount: String?
            
            public var sellable: Bool?
            
            public var stores: ProductSizeStores?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case sizeChart = "size_chart"
                
                case sizes = "sizes"
                
                case discount = "discount"
                
                case sellable = "sellable"
                
                case stores = "stores"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: SizeChart?, stores: ProductSizeStores?) {
                
                self.price = price
                
                self.sizeChart = sizeChart
                
                self.sizes = sizes
                
                self.discount = discount
                
                self.sellable = sellable
                
                self.stores = stores
                
            }

            public func duplicate() -> ProductSizes {
                let dict = self.dictionary!
                let copy = ProductSizes(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    sizes = try container.decode([ProductSize].self, forKey: .sizes)
                
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
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                
                
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                
            }
            
        }
        
        /*
            Model: AttributeDetail
            Used By: Catalog
        */
        class AttributeDetail: Codable {
            
            public var key: String?
            
            public var logo: String?
            
            public var display: String?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case logo = "logo"
                
                case display = "display"
                
                case description = "description"
                
            }

            public init(description: String?, display: String?, key: String?, logo: String?) {
                
                self.key = key
                
                self.logo = logo
                
                self.display = display
                
                self.description = description
                
            }

            public func duplicate() -> AttributeDetail {
                let dict = self.dictionary!
                let copy = AttributeDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
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
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: AttributeMetadata
            Used By: Catalog
        */
        class AttributeMetadata: Codable {
            
            public var details: [AttributeDetail]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case title = "title"
                
            }

            public init(details: [AttributeDetail]?, title: String?) {
                
                self.details = details
                
                self.title = title
                
            }

            public func duplicate() -> AttributeMetadata {
                let dict = self.dictionary!
                let copy = AttributeMetadata(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    details = try container.decode([AttributeDetail].self, forKey: .details)
                
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
            Model: ProductsComparisonResponse
            Used By: Catalog
        */
        class ProductsComparisonResponse: Codable {
            
            public var items: [ProductDetail]?
            
            public var attributesMetadata: [AttributeMetadata]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case attributesMetadata = "attributes_metadata"
                
            }

            public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?) {
                
                self.items = items
                
                self.attributesMetadata = attributesMetadata
                
            }

            public func duplicate() -> ProductsComparisonResponse {
                let dict = self.dictionary!
                let copy = ProductsComparisonResponse(dictionary: dict)!
                return copy
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
                    attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)
                
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
            
            public var items: [ProductDetail]?
            
            public var attributesMetadata: [AttributeMetadata]?
            
            public var title: String?
            
            public var subtitle: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case attributesMetadata = "attributes_metadata"
                
                case title = "title"
                
                case subtitle = "subtitle"
                
            }

            public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.items = items
                
                self.attributesMetadata = attributesMetadata
                
                self.title = title
                
                self.subtitle = subtitle
                
            }

            public func duplicate() -> ProductCompareResponse {
                let dict = self.dictionary!
                let copy = ProductCompareResponse(dictionary: dict)!
                return copy
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
                    attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)
                
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
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
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
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
            }
            
        }
        
        /*
            Model: ProductFrequentlyComparedSimilarResponse
            Used By: Catalog
        */
        class ProductFrequentlyComparedSimilarResponse: Codable {
            
            public var similars: ProductCompareResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: ProductCompareResponse?) {
                
                self.similars = similars
                
            }

            public func duplicate() -> ProductFrequentlyComparedSimilarResponse {
                let dict = self.dictionary!
                let copy = ProductFrequentlyComparedSimilarResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    similars = try container.decode(ProductCompareResponse.self, forKey: .similars)
                
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
            
            public var items: [ProductDetail]?
            
            public var title: String?
            
            public var subtitle: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case title = "title"
                
                case subtitle = "subtitle"
                
            }

            public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.items = items
                
                self.title = title
                
                self.subtitle = subtitle
                
            }

            public func duplicate() -> ProductSimilarItem {
                let dict = self.dictionary!
                let copy = ProductSimilarItem(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
            }
            
        }
        
        /*
            Model: SimilarProductByTypeResponse
            Used By: Catalog
        */
        class SimilarProductByTypeResponse: Codable {
            
            public var similars: ProductSimilarItem?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: ProductSimilarItem?) {
                
                self.similars = similars
                
            }

            public func duplicate() -> SimilarProductByTypeResponse {
                let dict = self.dictionary!
                let copy = SimilarProductByTypeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    similars = try container.decode(ProductSimilarItem.self, forKey: .similars)
                
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
            
            public var action: ProductListingAction?
            
            public var value: String?
            
            public var slug: String?
            
            public var medias: [Media]?
            
            public var name: String?
            
            public var isAvailable: Bool?
            
            public var color: String?
            
            public var colorName: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case value = "value"
                
                case slug = "slug"
                
                case medias = "medias"
                
                case name = "name"
                
                case isAvailable = "is_available"
                
                case color = "color"
                
                case colorName = "color_name"
                
                case uid = "uid"
                
            }

            public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
                
                self.action = action
                
                self.value = value
                
                self.slug = slug
                
                self.medias = medias
                
                self.name = name
                
                self.isAvailable = isAvailable
                
                self.color = color
                
                self.colorName = colorName
                
                self.uid = uid
                
            }

            public func duplicate() -> ProductVariantItemResponse {
                let dict = self.dictionary!
                let copy = ProductVariantItemResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    color = try container.decode(String.self, forKey: .color)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                
                
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                
                
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        class ProductVariantResponse: Codable {
            
            public var items: [ProductVariantItemResponse]?
            
            public var header: String?
            
            public var displayType: String?
            
            public var key: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case header = "header"
                
                case displayType = "display_type"
                
                case key = "key"
                
            }

            public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?, key: String?) {
                
                self.items = items
                
                self.header = header
                
                self.displayType = displayType
                
                self.key = key
                
            }

            public func duplicate() -> ProductVariantResponse {
                let dict = self.dictionary!
                let copy = ProductVariantResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductVariantItemResponse].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(header, forKey: .header)
                
                
                
                
                try? container.encodeIfPresent(displayType, forKey: .displayType)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
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

            public func duplicate() -> ProductVariantsResponse {
                let dict = self.dictionary!
                let copy = ProductVariantsResponse(dictionary: dict)!
                return copy
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
            Model: ProductStockPrice
            Used By: Catalog
        */
        class ProductStockPrice: Codable {
            
            public var effective: Double?
            
            public var currency: String?
            
            public var marked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case currency = "currency"
                
                case marked = "marked"
                
            }

            public init(currency: String?, effective: Double?, marked: Double?) {
                
                self.effective = effective
                
                self.currency = currency
                
                self.marked = marked
                
            }

            public func duplicate() -> ProductStockPrice {
                let dict = self.dictionary!
                let copy = ProductStockPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
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
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
            }
            
        }
        
        /*
            Model: CompanyDetail
            Used By: Catalog
        */
        class CompanyDetail: Codable {
            
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

            public func duplicate() -> CompanyDetail {
                let dict = self.dictionary!
                let copy = CompanyDetail(dictionary: dict)!
                return copy
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
        class StoreDetail: Codable {
            
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

            public func duplicate() -> StoreDetail {
                let dict = self.dictionary!
                let copy = StoreDetail(dictionary: dict)!
                return copy
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
            Model: Seller
            Used By: Catalog
        */
        class Seller: Codable {
            
            public var uid: Int?
            
            public var count: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case count = "count"
                
                case name = "name"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.count = count
                
                self.name = name
                
            }

            public func duplicate() -> Seller {
                let dict = self.dictionary!
                let copy = Seller(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: ProductStockStatusItem
            Used By: Catalog
        */
        class ProductStockStatusItem: Codable {
            
            public var price: ProductStockPrice?
            
            public var itemId: Int?
            
            public var identifier: [String: Any]?
            
            public var size: String?
            
            public var quantity: Int?
            
            public var company: CompanyDetail?
            
            public var uid: String?
            
            public var store: StoreDetail?
            
            public var seller: Seller?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case itemId = "item_id"
                
                case identifier = "identifier"
                
                case size = "size"
                
                case quantity = "quantity"
                
                case company = "company"
                
                case uid = "uid"
                
                case store = "store"
                
                case seller = "seller"
                
            }

            public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
                
                self.price = price
                
                self.itemId = itemId
                
                self.identifier = identifier
                
                self.size = size
                
                self.quantity = quantity
                
                self.company = company
                
                self.uid = uid
                
                self.store = store
                
                self.seller = seller
                
            }

            public func duplicate() -> ProductStockStatusItem {
                let dict = self.dictionary!
                let copy = ProductStockStatusItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    price = try container.decode(ProductStockPrice.self, forKey: .price)
                
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
                    identifier = try container.decode([String: Any].self, forKey: .identifier)
                
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
                    company = try container.decode(CompanyDetail.self, forKey: .company)
                
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
                    store = try container.decode(StoreDetail.self, forKey: .store)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
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

            public func duplicate() -> ProductStockStatusResponse {
                let dict = self.dictionary!
                let copy = ProductStockStatusResponse(dictionary: dict)!
                return copy
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

            public func duplicate() -> ProductStockPolling {
                let dict = self.dictionary!
                let copy = ProductStockPolling(dictionary: dict)!
                return copy
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
            Model: ProductFiltersKey
            Used By: Catalog
        */
        class ProductFiltersKey: Codable {
            
            public var display: String
            
            public var name: String
            
            public var logo: String?
            
            public var kind: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case name = "name"
                
                case logo = "logo"
                
                case kind = "kind"
                
            }

            public init(display: String, kind: String?, logo: String?, name: String) {
                
                self.display = display
                
                self.name = name
                
                self.logo = logo
                
                self.kind = kind
                
            }

            public func duplicate() -> ProductFiltersKey {
                let dict = self.dictionary!
                let copy = ProductFiltersKey(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(kind, forKey: .kind)
                
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        class ProductFiltersValue: Codable {
            
            public var value: String?
            
            public var count: Int?
            
            public var queryFormat: String?
            
            public var selectedMin: Int?
            
            public var isSelected: Bool
            
            public var min: Int?
            
            public var selectedMax: Int?
            
            public var currencyCode: String?
            
            public var display: String
            
            public var displayFormat: String?
            
            public var currencySymbol: String?
            
            public var max: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case count = "count"
                
                case queryFormat = "query_format"
                
                case selectedMin = "selected_min"
                
                case isSelected = "is_selected"
                
                case min = "min"
                
                case selectedMax = "selected_max"
                
                case currencyCode = "currency_code"
                
                case display = "display"
                
                case displayFormat = "display_format"
                
                case currencySymbol = "currency_symbol"
                
                case max = "max"
                
            }

            public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String?) {
                
                self.value = value
                
                self.count = count
                
                self.queryFormat = queryFormat
                
                self.selectedMin = selectedMin
                
                self.isSelected = isSelected
                
                self.min = min
                
                self.selectedMax = selectedMax
                
                self.currencyCode = currencyCode
                
                self.display = display
                
                self.displayFormat = displayFormat
                
                self.currencySymbol = currencySymbol
                
                self.max = max
                
            }

            public func duplicate() -> ProductFiltersValue {
                let dict = self.dictionary!
                let copy = ProductFiltersValue(dictionary: dict)!
                return copy
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
                    count = try container.decode(Int.self, forKey: .count)
                
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
                
                
                
                do {
                    selectedMin = try container.decode(Int.self, forKey: .selectedMin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                
                
                
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
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                
                do {
                    displayFormat = try container.decode(String.self, forKey: .displayFormat)
                
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
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
                
                
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
            }
            
        }
        
        /*
            Model: ProductFilters
            Used By: Catalog
        */
        class ProductFilters: Codable {
            
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

            public func duplicate() -> ProductFilters {
                let dict = self.dictionary!
                let copy = ProductFilters(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
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
        class ProductListingDetail: Codable {
            
            public var attributes: [String: Any]?
            
            public var color: String?
            
            public var type: String?
            
            public var shortDescription: String?
            
            public var action: ProductListingAction?
            
            public var rating: Double?
            
            public var tryouts: [String]?
            
            public var customMeta: [MetaFields]?
            
            public var ratingCount: Int?
            
            public var discount: String?
            
            public var hasVariant: Bool?
            
            public var productOnlineDate: String?
            
            public var itemType: String?
            
            public var description: String?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var name: String?
            
            public var imageNature: String?
            
            public var brand: ProductBrand?
            
            public var uid: Int?
            
            public var medias: [Media]?
            
            public var categories: [ProductBrand]?
            
            public var slug: String
            
            public var price: ProductListingPrice?
            
            public var teaserTag: String?
            
            public var sellable: Bool?
            
            public var itemCode: String?
            
            public var highlights: [String]?
            
            public var similars: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case attributes = "attributes"
                
                case color = "color"
                
                case type = "type"
                
                case shortDescription = "short_description"
                
                case action = "action"
                
                case rating = "rating"
                
                case tryouts = "tryouts"
                
                case customMeta = "_custom_meta"
                
                case ratingCount = "rating_count"
                
                case discount = "discount"
                
                case hasVariant = "has_variant"
                
                case productOnlineDate = "product_online_date"
                
                case itemType = "item_type"
                
                case description = "description"
                
                case groupedAttributes = "grouped_attributes"
                
                case name = "name"
                
                case imageNature = "image_nature"
                
                case brand = "brand"
                
                case uid = "uid"
                
                case medias = "medias"
                
                case categories = "categories"
                
                case slug = "slug"
                
                case price = "price"
                
                case teaserTag = "teaser_tag"
                
                case sellable = "sellable"
                
                case itemCode = "item_code"
                
                case highlights = "highlights"
                
                case similars = "similars"
                
            }

            public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, customMeta: [MetaFields]?) {
                
                self.attributes = attributes
                
                self.color = color
                
                self.type = type
                
                self.shortDescription = shortDescription
                
                self.action = action
                
                self.rating = rating
                
                self.tryouts = tryouts
                
                self.customMeta = customMeta
                
                self.ratingCount = ratingCount
                
                self.discount = discount
                
                self.hasVariant = hasVariant
                
                self.productOnlineDate = productOnlineDate
                
                self.itemType = itemType
                
                self.description = description
                
                self.groupedAttributes = groupedAttributes
                
                self.name = name
                
                self.imageNature = imageNature
                
                self.brand = brand
                
                self.uid = uid
                
                self.medias = medias
                
                self.categories = categories
                
                self.slug = slug
                
                self.price = price
                
                self.teaserTag = teaserTag
                
                self.sellable = sellable
                
                self.itemCode = itemCode
                
                self.highlights = highlights
                
                self.similars = similars
                
            }

            public func duplicate() -> ProductListingDetail {
                let dict = self.dictionary!
                let copy = ProductListingDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customMeta = try container.decode([MetaFields].self, forKey: .customMeta)
                
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
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                
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
                    groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
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
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
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
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                
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
                    highlights = try container.decode([String].self, forKey: .highlights)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                
                
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                
                
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                
                
                
                try? container.encodeIfPresent(customMeta, forKey: .customMeta)
                
                
                
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                
                
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                
                
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                
                
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                
                
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                
                
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                
                
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                
            }
            
        }
        
        /*
            Model: ProductSortOn
            Used By: Catalog
        */
        class ProductSortOn: Codable {
            
            public var value: String?
            
            public var isSelected: Bool?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case isSelected = "is_selected"
                
                case name = "name"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.value = value
                
                self.isSelected = isSelected
                
                self.name = name
                
            }

            public func duplicate() -> ProductSortOn {
                let dict = self.dictionary!
                let copy = ProductSortOn(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: ProductListingResponse
            Used By: Catalog
        */
        class ProductListingResponse: Codable {
            
            public var page: Page
            
            public var filters: [ProductFilters]?
            
            public var items: [ProductListingDetail]?
            
            public var sortOn: [ProductSortOn]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case filters = "filters"
                
                case items = "items"
                
                case sortOn = "sort_on"
                
            }

            public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
                
                self.page = page
                
                self.filters = filters
                
                self.items = items
                
                self.sortOn = sortOn
                
            }

            public func duplicate() -> ProductListingResponse {
                let dict = self.dictionary!
                let copy = ProductListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
                
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                
            }
            
        }
        
        /*
            Model: ImageUrls
            Used By: Catalog
        */
        class ImageUrls: Codable {
            
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

            public func duplicate() -> ImageUrls {
                let dict = self.dictionary!
                let copy = ImageUrls(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
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
        class BrandItem: Codable {
            
            public var action: ProductListingAction?
            
            public var slug: String?
            
            public var discount: String?
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var departments: [String]?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case slug = "slug"
                
                case discount = "discount"
                
                case name = "name"
                
                case banners = "banners"
                
                case departments = "departments"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
                
                self.action = action
                
                self.slug = slug
                
                self.discount = discount
                
                self.name = name
                
                self.banners = banners
                
                self.departments = departments
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public func duplicate() -> BrandItem {
                let dict = self.dictionary!
                let copy = BrandItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    discount = try container.decode(String.self, forKey: .discount)
                
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
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

            public func duplicate() -> BrandListingResponse {
                let dict = self.dictionary!
                let copy = BrandListingResponse(dictionary: dict)!
                return copy
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
            
            public var uid: Int?
            
            public var name: String?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
                case logo = "logo"
                
                case banners = "banners"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.name = name
                
                self.logo = logo
                
                self.banners = banners
                
            }

            public func duplicate() -> BrandDetailResponse {
                let dict = self.dictionary!
                let copy = BrandDetailResponse(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
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

            public func duplicate() -> DepartmentIdentifier {
                let dict = self.dictionary!
                let copy = DepartmentIdentifier(dictionary: dict)!
                return copy
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
            
            public var action: ProductListingAction?
            
            public var slug: String?
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var childs: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case slug = "slug"
                
                case name = "name"
                
                case banners = "banners"
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.action = action
                
                self.slug = slug
                
                self.name = name
                
                self.banners = banners
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.childs = childs
                
            }

            public func duplicate() -> ThirdLevelChild {
                let dict = self.dictionary!
                let copy = ThirdLevelChild(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
            }
            
        }
        
        /*
            Model: SecondLevelChild
            Used By: Catalog
        */
        class SecondLevelChild: Codable {
            
            public var action: ProductListingAction?
            
            public var slug: String?
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var childs: [ThirdLevelChild]?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case slug = "slug"
                
                case name = "name"
                
                case banners = "banners"
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.action = action
                
                self.slug = slug
                
                self.name = name
                
                self.banners = banners
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.childs = childs
                
            }

            public func duplicate() -> SecondLevelChild {
                let dict = self.dictionary!
                let copy = SecondLevelChild(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
            }
            
        }
        
        /*
            Model: Child
            Used By: Catalog
        */
        class Child: Codable {
            
            public var action: ProductListingAction?
            
            public var slug: String?
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var childs: [SecondLevelChild]?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case slug = "slug"
                
                case name = "name"
                
                case banners = "banners"
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.action = action
                
                self.slug = slug
                
                self.name = name
                
                self.banners = banners
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.childs = childs
                
            }

            public func duplicate() -> Child {
                let dict = self.dictionary!
                let copy = Child(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
            }
            
        }
        
        /*
            Model: CategoryItems
            Used By: Catalog
        */
        class CategoryItems: Codable {
            
            public var action: ProductListingAction?
            
            public var slug: String?
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var childs: [Child]?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case slug = "slug"
                
                case name = "name"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
                
                self.action = action
                
                self.slug = slug
                
                self.name = name
                
                self.banners = banners
                
                self.uid = uid
                
                self.childs = childs
                
            }

            public func duplicate() -> CategoryItems {
                let dict = self.dictionary!
                let copy = CategoryItems(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
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

            public func duplicate() -> DepartmentCategoryTree {
                let dict = self.dictionary!
                let copy = DepartmentCategoryTree(dictionary: dict)!
                return copy
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

            public func duplicate() -> CategoryListingResponse {
                let dict = self.dictionary!
                let copy = CategoryListingResponse(dictionary: dict)!
                return copy
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
            
            public var uid: Int?
            
            public var name: String?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
                case logo = "logo"
                
                case banners = "banners"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.name = name
                
                self.logo = logo
                
                self.banners = banners
                
            }

            public func duplicate() -> CategoryMetaResponse {
                let dict = self.dictionary!
                let copy = CategoryMetaResponse(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
            }
            
        }
        
        /*
            Model: HomeListingResponse
            Used By: Catalog
        */
        class HomeListingResponse: Codable {
            
            public var items: [ProductListingDetail]?
            
            public var message: String?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case message = "message"
                
                case page = "page"
                
            }

            public init(items: [ProductListingDetail]?, message: String?, page: Page) {
                
                self.items = items
                
                self.message = message
                
                self.page = page
                
            }

            public func duplicate() -> HomeListingResponse {
                let dict = self.dictionary!
                let copy = HomeListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                
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
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: Department
            Used By: Catalog
        */
        class Department: Codable {
            
            public var slug: String?
            
            public var priorityOrder: Int?
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case priorityOrder = "priority_order"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.slug = slug
                
                self.priorityOrder = priorityOrder
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public func duplicate() -> Department {
                let dict = self.dictionary!
                let copy = Department(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
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

            public func duplicate() -> DepartmentResponse {
                let dict = self.dictionary!
                let copy = DepartmentResponse(dictionary: dict)!
                return copy
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
            
            public var action: ProductListingAction?
            
            public var display: String?
            
            public var logo: Media?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case display = "display"
                
                case logo = "logo"
                
                case type = "type"
                
            }

            public init(action: ProductListingAction?, display: String?, logo: Media?, type: String?) {
                
                self.action = action
                
                self.display = display
                
                self.logo = logo
                
                self.type = type
                
            }

            public func duplicate() -> AutocompleteItem {
                let dict = self.dictionary!
                let copy = AutocompleteItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
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

            public func duplicate() -> AutoCompleteResponse {
                let dict = self.dictionary!
                let copy = AutoCompleteResponse(dictionary: dict)!
                return copy
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
            Model: GetCollectionDetailNest
            Used By: Catalog
        */
        class GetCollectionDetailNest: Codable {
            
            public var badge: [String: Any]?
            
            public var banners: ImageUrls?
            
            public var schedule: [String: Any]?
            
            public var type: String?
            
            public var allowFacets: Bool?
            
            public var action: ProductListingAction?
            
            public var allowSort: Bool?
            
            public var meta: [String: Any]?
            
            public var query: [String: Any]?
            
            public var visibleFacetsKeys: [String]?
            
            public var tag: [String]?
            
            public var description: String?
            
            public var cron: [String: Any]?
            
            public var name: String?
            
            public var appId: String?
            
            public var uid: String?
            
            public var logo: Media?
            
            public var slug: String?
            
            public var isActive: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case badge = "badge"
                
                case banners = "banners"
                
                case schedule = "_schedule"
                
                case type = "type"
                
                case allowFacets = "allow_facets"
                
                case action = "action"
                
                case allowSort = "allow_sort"
                
                case meta = "meta"
                
                case query = "query"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case tag = "tag"
                
                case description = "description"
                
                case cron = "cron"
                
                case name = "name"
                
                case appId = "app_id"
                
                case uid = "uid"
                
                case logo = "logo"
                
                case slug = "slug"
                
                case isActive = "is_active"
                
            }

            public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.badge = badge
                
                self.banners = banners
                
                self.schedule = schedule
                
                self.type = type
                
                self.allowFacets = allowFacets
                
                self.action = action
                
                self.allowSort = allowSort
                
                self.meta = meta
                
                self.query = query
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.tag = tag
                
                self.description = description
                
                self.cron = cron
                
                self.name = name
                
                self.appId = appId
                
                self.uid = uid
                
                self.logo = logo
                
                self.slug = slug
                
                self.isActive = isActive
                
            }

            public func duplicate() -> GetCollectionDetailNest {
                let dict = self.dictionary!
                let copy = GetCollectionDetailNest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
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
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
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
                    query = try container.decode([String: Any].self, forKey: .query)
                
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
                    tag = try container.decode([String].self, forKey: .tag)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                
                
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterType
            Used By: Catalog
        */
        class CollectionListingFilterType: Codable {
            
            public var display: String?
            
            public var isSelected: Bool?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case isSelected = "is_selected"
                
                case name = "name"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.display = display
                
                self.isSelected = isSelected
                
                self.name = name
                
            }

            public func duplicate() -> CollectionListingFilterType {
                let dict = self.dictionary!
                let copy = CollectionListingFilterType(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterTag
            Used By: Catalog
        */
        class CollectionListingFilterTag: Codable {
            
            public var display: String?
            
            public var isSelected: Bool?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case isSelected = "is_selected"
                
                case name = "name"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.display = display
                
                self.isSelected = isSelected
                
                self.name = name
                
            }

            public func duplicate() -> CollectionListingFilterTag {
                let dict = self.dictionary!
                let copy = CollectionListingFilterTag(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: CollectionListingFilter
            Used By: Catalog
        */
        class CollectionListingFilter: Codable {
            
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

            public func duplicate() -> CollectionListingFilter {
                let dict = self.dictionary!
                let copy = CollectionListingFilter(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode([CollectionListingFilterType].self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
        class GetCollectionListingResponse: Codable {
            
            public var items: [GetCollectionDetailNest]?
            
            public var filters: CollectionListingFilter?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case filters = "filters"
                
                case page = "page"
                
            }

            public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page) {
                
                self.items = items
                
                self.filters = filters
                
                self.page = page
                
            }

            public func duplicate() -> GetCollectionListingResponse {
                let dict = self.dictionary!
                let copy = GetCollectionListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([GetCollectionDetailNest].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    filters = try container.decode(CollectionListingFilter.self, forKey: .filters)
                
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
                
                
                
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: CollectionDetailResponse
            Used By: Catalog
        */
        class CollectionDetailResponse: Codable {
            
            public var slug: String?
            
            public var description: String?
            
            public var allowSort: Bool?
            
            public var cron: [String: Any]?
            
            public var isActive: Bool?
            
            public var name: String?
            
            public var meta: [String: Any]?
            
            public var badge: [String: Any]?
            
            public var banners: ImageUrls?
            
            public var appId: String?
            
            public var schedule: [String: Any]?
            
            public var query: [String: Any]?
            
            public var visibleFacetsKeys: [String]?
            
            public var tag: [String]?
            
            public var logo: Media?
            
            public var type: String?
            
            public var allowFacets: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case description = "description"
                
                case allowSort = "allow_sort"
                
                case cron = "cron"
                
                case isActive = "is_active"
                
                case name = "name"
                
                case meta = "meta"
                
                case badge = "badge"
                
                case banners = "banners"
                
                case appId = "app_id"
                
                case schedule = "_schedule"
                
                case query = "query"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case tag = "tag"
                
                case logo = "logo"
                
                case type = "type"
                
                case allowFacets = "allow_facets"
                
            }

            public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.slug = slug
                
                self.description = description
                
                self.allowSort = allowSort
                
                self.cron = cron
                
                self.isActive = isActive
                
                self.name = name
                
                self.meta = meta
                
                self.badge = badge
                
                self.banners = banners
                
                self.appId = appId
                
                self.schedule = schedule
                
                self.query = query
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.tag = tag
                
                self.logo = logo
                
                self.type = type
                
                self.allowFacets = allowFacets
                
            }

            public func duplicate() -> CollectionDetailResponse {
                let dict = self.dictionary!
                let copy = CollectionDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    query = try container.decode([String: Any].self, forKey: .query)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                
                
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
                
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                
                
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                
            }
            
        }
        
        /*
            Model: GetFollowListingResponse
            Used By: Catalog
        */
        class GetFollowListingResponse: Codable {
            
            public var page: Page
            
            public var items: [ProductListingDetail]
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [ProductListingDetail], page: Page) {
                
                self.page = page
                
                self.items = items
                
            }

            public func duplicate() -> GetFollowListingResponse {
                let dict = self.dictionary!
                let copy = GetFollowListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                
                items = try container.decode([ProductListingDetail].self, forKey: .items)
                
                
                
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
        class FollowPostResponse: Codable {
            
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

            public func duplicate() -> FollowPostResponse {
                let dict = self.dictionary!
                let copy = FollowPostResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
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
        class FollowerCountResponse: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
            }

            public func duplicate() -> FollowerCountResponse {
                let dict = self.dictionary!
                let copy = FollowerCountResponse(dictionary: dict)!
                return copy
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

            public func duplicate() -> FollowIdsData {
                let dict = self.dictionary!
                let copy = FollowIdsData(dictionary: dict)!
                return copy
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
        class FollowIdsResponse: Codable {
            
            public var data: FollowIdsData?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: FollowIdsData?) {
                
                self.data = data
                
            }

            public func duplicate() -> FollowIdsResponse {
                let dict = self.dictionary!
                let copy = FollowIdsResponse(dictionary: dict)!
                return copy
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

            public func duplicate() -> LatLong {
                let dict = self.dictionary!
                let copy = LatLong(dictionary: dict)!
                return copy
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
            Model: Store
            Used By: Catalog
        */
        class Store: Codable {
            
            public var state: String?
            
            public var address: String?
            
            public var name: String?
            
            public var pincode: Int?
            
            public var city: String?
            
            public var storeEmail: String?
            
            public var country: String?
            
            public var latLong: LatLong?
            
            public var uid: Int?
            
            public var storeCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case state = "state"
                
                case address = "address"
                
                case name = "name"
                
                case pincode = "pincode"
                
                case city = "city"
                
                case storeEmail = "store_email"
                
                case country = "country"
                
                case latLong = "lat_long"
                
                case uid = "uid"
                
                case storeCode = "store_code"
                
            }

            public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
                
                self.state = state
                
                self.address = address
                
                self.name = name
                
                self.pincode = pincode
                
                self.city = city
                
                self.storeEmail = storeEmail
                
                self.country = country
                
                self.latLong = latLong
                
                self.uid = uid
                
                self.storeCode = storeCode
                
            }

            public func duplicate() -> Store {
                let dict = self.dictionary!
                let copy = Store(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    city = try container.decode(String.self, forKey: .city)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
            }
            
        }
        
        /*
            Model: StoreListingResponse
            Used By: Catalog
        */
        class StoreListingResponse: Codable {
            
            public var items: [Store]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [Store], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> StoreListingResponse {
                let dict = self.dictionary!
                let copy = StoreListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([Store].self, forKey: .items)
                
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: SellerPhoneNumber
            Used By: Catalog
        */
        class SellerPhoneNumber: Codable {
            
            public var countryCode: Int
            
            public var number: String
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case number = "number"
                
            }

            public init(countryCode: Int, number: String) {
                
                self.countryCode = countryCode
                
                self.number = number
                
            }

            public func duplicate() -> SellerPhoneNumber {
                let dict = self.dictionary!
                let copy = SellerPhoneNumber(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                countryCode = try container.decode(Int.self, forKey: .countryCode)
                
                
                
                
                number = try container.decode(String.self, forKey: .number)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(number, forKey: .number)
                
                
            }
            
        }
        
        /*
            Model: StoreManagerSerializer
            Used By: Catalog
        */
        class StoreManagerSerializer: Codable {
            
            public var name: String?
            
            public var mobileNo: SellerPhoneNumber?
            
            public var email: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case mobileNo = "mobile_no"
                
                case email = "email"
                
            }

            public init(email: String?, mobileNo: SellerPhoneNumber?, name: String?) {
                
                self.name = name
                
                self.mobileNo = mobileNo
                
                self.email = email
                
            }

            public func duplicate() -> StoreManagerSerializer {
                let dict = self.dictionary!
                let copy = StoreManagerSerializer(dictionary: dict)!
                return copy
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
                    mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)
                
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
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
            }
            
        }
        
        /*
            Model: StoreAddressSerializer
            Used By: Catalog
        */
        class StoreAddressSerializer: Codable {
            
            public var landmark: String?
            
            public var state: String?
            
            public var city: String?
            
            public var address2: String?
            
            public var pincode: Int?
            
            public var latitude: Double?
            
            public var address1: String?
            
            public var country: String?
            
            public var longitude: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case landmark = "landmark"
                
                case state = "state"
                
                case city = "city"
                
                case address2 = "address2"
                
                case pincode = "pincode"
                
                case latitude = "latitude"
                
                case address1 = "address1"
                
                case country = "country"
                
                case longitude = "longitude"
                
            }

            public init(address1: String?, address2: String?, city: String?, country: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
                
                self.landmark = landmark
                
                self.state = state
                
                self.city = city
                
                self.address2 = address2
                
                self.pincode = pincode
                
                self.latitude = latitude
                
                self.address1 = address1
                
                self.country = country
                
                self.longitude = longitude
                
            }

            public func duplicate() -> StoreAddressSerializer {
                let dict = self.dictionary!
                let copy = StoreAddressSerializer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
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
                    address1 = try container.decode(String.self, forKey: .address1)
                
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
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(address2, forKey: .address2)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(latitude, forKey: .latitude)
                
                
                
                
                try? container.encodeIfPresent(address1, forKey: .address1)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(longitude, forKey: .longitude)
                
                
            }
            
        }
        
        /*
            Model: StoreDepartments
            Used By: Catalog
        */
        class StoreDepartments: Codable {
            
            public var slug: String?
            
            public var priorityOrder: Int?
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case priorityOrder = "priority_order"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(logo: String?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.slug = slug
                
                self.priorityOrder = priorityOrder
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public func duplicate() -> StoreDepartments {
                let dict = self.dictionary!
                let copy = StoreDepartments(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: CompanyStore
            Used By: Catalog
        */
        class CompanyStore: Codable {
            
            public var uid: Int?
            
            public var companyType: String?
            
            public var name: String?
            
            public var businessType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case companyType = "company_type"
                
                case name = "name"
                
                case businessType = "business_type"
                
            }

            public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.companyType = companyType
                
                self.name = name
                
                self.businessType = businessType
                
            }

            public func duplicate() -> CompanyStore {
                let dict = self.dictionary!
                let copy = CompanyStore(dictionary: dict)!
                return copy
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
                    companyType = try container.decode(String.self, forKey: .companyType)
                
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
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(companyType, forKey: .companyType)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(businessType, forKey: .businessType)
                
                
            }
            
        }
        
        /*
            Model: AppStore
            Used By: Catalog
        */
        class AppStore: Codable {
            
            public var manager: StoreManagerSerializer?
            
            public var contactNumbers: [SellerPhoneNumber]?
            
            public var name: String?
            
            public var address: StoreAddressSerializer?
            
            public var departments: [StoreDepartments]?
            
            public var company: CompanyStore?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case manager = "manager"
                
                case contactNumbers = "contact_numbers"
                
                case name = "name"
                
                case address = "address"
                
                case departments = "departments"
                
                case company = "company"
                
                case uid = "uid"
                
            }

            public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, uid: Int?) {
                
                self.manager = manager
                
                self.contactNumbers = contactNumbers
                
                self.name = name
                
                self.address = address
                
                self.departments = departments
                
                self.company = company
                
                self.uid = uid
                
            }

            public func duplicate() -> AppStore {
                let dict = self.dictionary!
                let copy = AppStore(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
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
                    address = try container.decode(StoreAddressSerializer.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([StoreDepartments].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    company = try container.decode(CompanyStore.self, forKey: .company)
                
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
                
                
                
                try? container.encodeIfPresent(manager, forKey: .manager)
                
                
                
                
                try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ApplicationStoreListing
            Used By: Catalog
        */
        class ApplicationStoreListing: Codable {
            
            public var items: [AppStore]?
            
            public var filters: [StoreDepartments]?
            
            public var page: Page?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case filters = "filters"
                
                case page = "page"
                
            }

            public init(filters: [StoreDepartments]?, items: [AppStore]?, page: Page?) {
                
                self.items = items
                
                self.filters = filters
                
                self.page = page
                
            }

            public func duplicate() -> ApplicationStoreListing {
                let dict = self.dictionary!
                let copy = ApplicationStoreListing(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([AppStore].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    filters = try container.decode([StoreDepartments].self, forKey: .filters)
                
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
            Model: Time
            Used By: Catalog
        */
        class Time: Codable {
            
            public var minute: Int?
            
            public var hour: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case minute = "minute"
                
                case hour = "hour"
                
            }

            public init(hour: Int?, minute: Int?) {
                
                self.minute = minute
                
                self.hour = hour
                
            }

            public func duplicate() -> Time {
                let dict = self.dictionary!
                let copy = Time(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    minute = try container.decode(Int.self, forKey: .minute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hour = try container.decode(Int.self, forKey: .hour)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(minute, forKey: .minute)
                
                
                
                
                try? container.encodeIfPresent(hour, forKey: .hour)
                
                
            }
            
        }
        
        /*
            Model: StoreTiming
            Used By: Catalog
        */
        class StoreTiming: Codable {
            
            public var closing: Time?
            
            public var opening: Time?
            
            public var open: Bool?
            
            public var weekday: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case closing = "closing"
                
                case opening = "opening"
                
                case open = "open"
                
                case weekday = "weekday"
                
            }

            public init(closing: Time?, open: Bool?, opening: Time?, weekday: String?) {
                
                self.closing = closing
                
                self.opening = opening
                
                self.open = open
                
                self.weekday = weekday
                
            }

            public func duplicate() -> StoreTiming {
                let dict = self.dictionary!
                let copy = StoreTiming(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    closing = try container.decode(Time.self, forKey: .closing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    opening = try container.decode(Time.self, forKey: .opening)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    open = try container.decode(Bool.self, forKey: .open)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    weekday = try container.decode(String.self, forKey: .weekday)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(closing, forKey: .closing)
                
                
                
                
                try? container.encodeIfPresent(opening, forKey: .opening)
                
                
                
                
                try? container.encodeIfPresent(open, forKey: .open)
                
                
                
                
                try? container.encodeIfPresent(weekday, forKey: .weekday)
                
                
            }
            
        }
        
        /*
            Model: StoreDetails
            Used By: Catalog
        */
        class StoreDetails: Codable {
            
            public var manager: StoreManagerSerializer?
            
            public var contactNumbers: [SellerPhoneNumber]?
            
            public var name: String?
            
            public var address: StoreAddressSerializer?
            
            public var departments: [StoreDepartments]?
            
            public var company: CompanyStore?
            
            public var customJson: [String: Any]?
            
            public var uid: Int?
            
            public var timing: [StoreTiming]?
            

            public enum CodingKeys: String, CodingKey {
                
                case manager = "manager"
                
                case contactNumbers = "contact_numbers"
                
                case name = "name"
                
                case address = "address"
                
                case departments = "departments"
                
                case company = "company"
                
                case customJson = "_custom_json"
                
                case uid = "uid"
                
                case timing = "timing"
                
            }

            public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, timing: [StoreTiming]?, uid: Int?, customJson: [String: Any]?) {
                
                self.manager = manager
                
                self.contactNumbers = contactNumbers
                
                self.name = name
                
                self.address = address
                
                self.departments = departments
                
                self.company = company
                
                self.customJson = customJson
                
                self.uid = uid
                
                self.timing = timing
                
            }

            public func duplicate() -> StoreDetails {
                let dict = self.dictionary!
                let copy = StoreDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
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
                    address = try container.decode(StoreAddressSerializer.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([StoreDepartments].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    company = try container.decode(CompanyStore.self, forKey: .company)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timing = try container.decode([StoreTiming].self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(manager, forKey: .manager)
                
                
                
                
                try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(timing, forKey: .timing)
                
                
            }
            
        }
        
        /*
            Model: ProductStockPriceV2
            Used By: Catalog
        */
        class ProductStockPriceV2: Codable {
            
            public var effective: Double?
            
            public var currency: String?
            
            public var marked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case currency = "currency"
                
                case marked = "marked"
                
            }

            public init(currency: String?, effective: Double?, marked: Double?) {
                
                self.effective = effective
                
                self.currency = currency
                
                self.marked = marked
                
            }

            public func duplicate() -> ProductStockPriceV2 {
                let dict = self.dictionary!
                let copy = ProductStockPriceV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
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
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
            }
            
        }
        
        /*
            Model: ReturnConfigSchemaV2
            Used By: Catalog
        */
        class ReturnConfigSchemaV2: Codable {
            
            public var unit: String?
            
            public var returnable: Bool?
            
            public var time: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case unit = "unit"
                
                case returnable = "returnable"
                
                case time = "time"
                
            }

            public init(returnable: Bool?, time: Int?, unit: String?) {
                
                self.unit = unit
                
                self.returnable = returnable
                
                self.time = time
                
            }

            public func duplicate() -> ReturnConfigSchemaV2 {
                let dict = self.dictionary!
                let copy = ReturnConfigSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(unit, forKey: .unit)
                
                
                
                
                try? container.encodeIfPresent(returnable, forKey: .returnable)
                
                
                
                
                try? container.encodeIfPresent(time, forKey: .time)
                
                
            }
            
        }
        
        /*
            Model: StrategyWiseListingSchemaV2
            Used By: Catalog
        */
        class StrategyWiseListingSchemaV2: Codable {
            
            public var tat: Int?
            
            public var quantity: Int?
            
            public var pincode: Int?
            
            public var distance: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case tat = "tat"
                
                case quantity = "quantity"
                
                case pincode = "pincode"
                
                case distance = "distance"
                
            }

            public init(distance: Int?, pincode: Int?, quantity: Int?, tat: Int?) {
                
                self.tat = tat
                
                self.quantity = quantity
                
                self.pincode = pincode
                
                self.distance = distance
                
            }

            public func duplicate() -> StrategyWiseListingSchemaV2 {
                let dict = self.dictionary!
                let copy = StrategyWiseListingSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    tat = try container.decode(Int.self, forKey: .tat)
                
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    distance = try container.decode(Int.self, forKey: .distance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(tat, forKey: .tat)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(distance, forKey: .distance)
                
                
            }
            
        }
        
        /*
            Model: ProductSetDistributionSizeV2
            Used By: Catalog
        */
        class ProductSetDistributionSizeV2: Codable {
            
            public var pieces: Int?
            
            public var size: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pieces = "pieces"
                
                case size = "size"
                
            }

            public init(pieces: Int?, size: String?) {
                
                self.pieces = pieces
                
                self.size = size
                
            }

            public func duplicate() -> ProductSetDistributionSizeV2 {
                let dict = self.dictionary!
                let copy = ProductSetDistributionSizeV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pieces = try container.decode(Int.self, forKey: .pieces)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pieces, forKey: .pieces)
                
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
            }
            
        }
        
        /*
            Model: ProductSetDistributionV2
            Used By: Catalog
        */
        class ProductSetDistributionV2: Codable {
            
            public var sizes: [ProductSetDistributionSizeV2]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizes = "sizes"
                
            }

            public init(sizes: [ProductSetDistributionSizeV2]?) {
                
                self.sizes = sizes
                
            }

            public func duplicate() -> ProductSetDistributionV2 {
                let dict = self.dictionary!
                let copy = ProductSetDistributionV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sizes = try container.decode([ProductSetDistributionSizeV2].self, forKey: .sizes)
                
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
            Model: ProductSetV2
            Used By: Catalog
        */
        class ProductSetV2: Codable {
            
            public var sizeDistribution: ProductSetDistributionV2?
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizeDistribution = "size_distribution"
                
                case quantity = "quantity"
                
            }

            public init(quantity: Int?, sizeDistribution: ProductSetDistributionV2?) {
                
                self.sizeDistribution = sizeDistribution
                
                self.quantity = quantity
                
            }

            public func duplicate() -> ProductSetV2 {
                let dict = self.dictionary!
                let copy = ProductSetV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sizeDistribution = try container.decode(ProductSetDistributionV2.self, forKey: .sizeDistribution)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
            }
            
        }
        
        /*
            Model: SellerV2
            Used By: Catalog
        */
        class SellerV2: Codable {
            
            public var uid: Int?
            
            public var count: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case count = "count"
                
                case name = "name"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.count = count
                
                self.name = name
                
            }

            public func duplicate() -> SellerV2 {
                let dict = self.dictionary!
                let copy = SellerV2(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: ArticleAssignmentV2
            Used By: Catalog
        */
        class ArticleAssignmentV2: Codable {
            
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

            public func duplicate() -> ArticleAssignmentV2 {
                let dict = self.dictionary!
                let copy = ArticleAssignmentV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
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
            Model: StoreV2
            Used By: Catalog
        */
        class StoreV2: Codable {
            
            public var uid: Int?
            
            public var count: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case count = "count"
                
                case name = "name"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.uid = uid
                
                self.count = count
                
                self.name = name
                
            }

            public func duplicate() -> StoreV2 {
                let dict = self.dictionary!
                let copy = StoreV2(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: DetailsSchemaV2
            Used By: Catalog
        */
        class DetailsSchemaV2: Codable {
            
            public var key: String?
            
            public var type: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case type = "type"
                
                case value = "value"
                
            }

            public init(key: String?, type: String?, value: String?) {
                
                self.key = key
                
                self.type = type
                
                self.value = value
                
            }

            public func duplicate() -> DetailsSchemaV2 {
                let dict = self.dictionary!
                let copy = DetailsSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: MarketPlaceSttributesSchemaV2
            Used By: Catalog
        */
        class MarketPlaceSttributesSchemaV2: Codable {
            
            public var details: [DetailsSchemaV2]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case title = "title"
                
            }

            public init(details: [DetailsSchemaV2]?, title: String?) {
                
                self.details = details
                
                self.title = title
                
            }

            public func duplicate() -> MarketPlaceSttributesSchemaV2 {
                let dict = self.dictionary!
                let copy = MarketPlaceSttributesSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    details = try container.decode([DetailsSchemaV2].self, forKey: .details)
                
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
            Model: ProductSizePriceResponseV2
            Used By: Catalog
        */
        class ProductSizePriceResponseV2: Codable {
            
            public var price: ProductStockPriceV2?
            
            public var itemType: String?
            
            public var sellerCount: Int?
            
            public var discount: String?
            
            public var pincode: Int?
            
            public var returnConfig: ReturnConfigSchemaV2?
            
            public var strategyWiseListing: [StrategyWiseListingSchemaV2]?
            
            public var specialBadge: String?
            
            public var quantity: Int?
            
            public var set: ProductSetV2?
            
            public var seller: SellerV2?
            
            public var articleAssignment: ArticleAssignmentV2?
            
            public var store: StoreV2?
            
            public var pricePerPiece: ProductStockPriceV2?
            
            public var marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?
            
            public var longLat: [Double]?
            
            public var articleId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case itemType = "item_type"
                
                case sellerCount = "seller_count"
                
                case discount = "discount"
                
                case pincode = "pincode"
                
                case returnConfig = "return_config"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case specialBadge = "special_badge"
                
                case quantity = "quantity"
                
                case set = "set"
                
                case seller = "seller"
                
                case articleAssignment = "article_assignment"
                
                case store = "store"
                
                case pricePerPiece = "price_per_piece"
                
                case marketplaceAttributes = "marketplace_attributes"
                
                case longLat = "long_lat"
                
                case articleId = "article_id"
                
            }

            public init(articleAssignment: ArticleAssignmentV2?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?, pincode: Int?, price: ProductStockPriceV2?, pricePerPiece: ProductStockPriceV2?, quantity: Int?, returnConfig: ReturnConfigSchemaV2?, seller: SellerV2?, sellerCount: Int?, set: ProductSetV2?, specialBadge: String?, store: StoreV2?, strategyWiseListing: [StrategyWiseListingSchemaV2]?) {
                
                self.price = price
                
                self.itemType = itemType
                
                self.sellerCount = sellerCount
                
                self.discount = discount
                
                self.pincode = pincode
                
                self.returnConfig = returnConfig
                
                self.strategyWiseListing = strategyWiseListing
                
                self.specialBadge = specialBadge
                
                self.quantity = quantity
                
                self.set = set
                
                self.seller = seller
                
                self.articleAssignment = articleAssignment
                
                self.store = store
                
                self.pricePerPiece = pricePerPiece
                
                self.marketplaceAttributes = marketplaceAttributes
                
                self.longLat = longLat
                
                self.articleId = articleId
                
            }

            public func duplicate() -> ProductSizePriceResponseV2 {
                let dict = self.dictionary!
                let copy = ProductSizePriceResponseV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    price = try container.decode(ProductStockPriceV2.self, forKey: .price)
                
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
                    sellerCount = try container.decode(Int.self, forKey: .sellerCount)
                
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    returnConfig = try container.decode(ReturnConfigSchemaV2.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    strategyWiseListing = try container.decode([StrategyWiseListingSchemaV2].self, forKey: .strategyWiseListing)
                
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
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    set = try container.decode(ProductSetV2.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(SellerV2.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleAssignment = try container.decode(ArticleAssignmentV2.self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(StoreV2.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pricePerPiece = try container.decode(ProductStockPriceV2.self, forKey: .pricePerPiece)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV2].self, forKey: .marketplaceAttributes)
                
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
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                
                
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
                
                
                
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                
                
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
                
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)
                
                
                
                
                try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)
                
                
                
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
            }
            
        }
        
        /*
            Model: ProductSizeSellerFilterSchemaV2
            Used By: Catalog
        */
        class ProductSizeSellerFilterSchemaV2: Codable {
            
            public var value: String?
            
            public var isSelected: Bool?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case isSelected = "is_selected"
                
                case name = "name"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.value = value
                
                self.isSelected = isSelected
                
                self.name = name
                
            }

            public func duplicate() -> ProductSizeSellerFilterSchemaV2 {
                let dict = self.dictionary!
                let copy = ProductSizeSellerFilterSchemaV2(dictionary: dict)!
                return copy
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: ProductSizeSellersResponseV2
            Used By: Catalog
        */
        class ProductSizeSellersResponseV2: Codable {
            
            public var page: Page
            
            public var items: [ProductSizePriceResponseV2]?
            
            public var sortOn: [ProductSizeSellerFilterSchemaV2]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
                case sortOn = "sort_on"
                
            }

            public init(items: [ProductSizePriceResponseV2]?, page: Page, sortOn: [ProductSizeSellerFilterSchemaV2]?) {
                
                self.page = page
                
                self.items = items
                
                self.sortOn = sortOn
                
            }

            public func duplicate() -> ProductSizeSellersResponseV2 {
                let dict = self.dictionary!
                let copy = ProductSizeSellersResponseV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                
                do {
                    items = try container.decode([ProductSizePriceResponseV2].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sortOn = try container.decode([ProductSizeSellerFilterSchemaV2].self, forKey: .sortOn)
                
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
                
                
                
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                
            }
            
        }
        
        /*
            Model: Price1
            Used By: Catalog
        */
        class Price1: Codable {
            
            public var maxEffective: Double?
            
            public var minMarked: Double?
            
            public var currency: String?
            
            public var minEffective: Double?
            
            public var maxMarked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case maxEffective = "max_effective"
                
                case minMarked = "min_marked"
                
                case currency = "currency"
                
                case minEffective = "min_effective"
                
                case maxMarked = "max_marked"
                
            }

            public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
                
                self.maxEffective = maxEffective
                
                self.minMarked = minMarked
                
                self.currency = currency
                
                self.minEffective = minEffective
                
                self.maxMarked = maxMarked
                
            }

            public func duplicate() -> Price1 {
                let dict = self.dictionary!
                let copy = Price1(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    maxEffective = try container.decode(Double.self, forKey: .maxEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minMarked = try container.decode(Double.self, forKey: .minMarked)
                
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
                    minEffective = try container.decode(Double.self, forKey: .minEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxMarked = try container.decode(Double.self, forKey: .maxMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)
                
                
                
                
                try? container.encodeIfPresent(minMarked, forKey: .minMarked)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(minEffective, forKey: .minEffective)
                
                
                
                
                try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
                
                
            }
            
        }
        
        /*
            Model: Size
            Used By: Catalog
        */
        class Size: Codable {
            
            public var isAvailable: Bool?
            
            public var display: String?
            
            public var quantity: Int?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isAvailable = "is_available"
                
                case display = "display"
                
                case quantity = "quantity"
                
                case value = "value"
                
            }

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.isAvailable = isAvailable
                
                self.display = display
                
                self.quantity = quantity
                
                self.value = value
                
            }

            public func duplicate() -> Size {
                let dict = self.dictionary!
                let copy = Size(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                
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
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
            Model: ProductDetails
            Used By: Catalog
        */
        class ProductDetails: Codable {
            
            public var attributes: [String: Any]?
            
            public var identifier: [String: Any]?
            
            public var isSet: Bool?
            
            public var hsnCode: Int?
            
            public var shortDescription: String?
            
            public var brandUid: Int?
            
            public var rating: Double?
            
            public var ratingCount: Int?
            
            public var media: [[String: Any]]?
            
            public var hasVariant: Bool?
            
            public var countryOfOrigin: String?
            
            public var description: String?
            
            public var images: [[String: Any]]?
            
            public var groupedAttributes: [String: Any]?
            
            public var name: String?
            
            public var outOfStock: Bool?
            
            public var imageNature: String?
            
            public var slug: String?
            
            public var templateTag: String?
            
            public var itemCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case attributes = "attributes"
                
                case identifier = "identifier"
                
                case isSet = "is_set"
                
                case hsnCode = "hsn_code"
                
                case shortDescription = "short_description"
                
                case brandUid = "brand_uid"
                
                case rating = "rating"
                
                case ratingCount = "rating_count"
                
                case media = "media"
                
                case hasVariant = "has_variant"
                
                case countryOfOrigin = "country_of_origin"
                
                case description = "description"
                
                case images = "images"
                
                case groupedAttributes = "grouped_attributes"
                
                case name = "name"
                
                case outOfStock = "out_of_stock"
                
                case imageNature = "image_nature"
                
                case slug = "slug"
                
                case templateTag = "template_tag"
                
                case itemCode = "item_code"
                
            }

            public init(attributes: [String: Any]?, brandUid: Int?, countryOfOrigin: String?, description: String?, groupedAttributes: [String: Any]?, hasVariant: Bool?, hsnCode: Int?, identifier: [String: Any]?, images: [[String: Any]]?, imageNature: String?, isSet: Bool?, itemCode: String?, media: [[String: Any]]?, name: String?, outOfStock: Bool?, rating: Double?, ratingCount: Int?, shortDescription: String?, slug: String?, templateTag: String?) {
                
                self.attributes = attributes
                
                self.identifier = identifier
                
                self.isSet = isSet
                
                self.hsnCode = hsnCode
                
                self.shortDescription = shortDescription
                
                self.brandUid = brandUid
                
                self.rating = rating
                
                self.ratingCount = ratingCount
                
                self.media = media
                
                self.hasVariant = hasVariant
                
                self.countryOfOrigin = countryOfOrigin
                
                self.description = description
                
                self.images = images
                
                self.groupedAttributes = groupedAttributes
                
                self.name = name
                
                self.outOfStock = outOfStock
                
                self.imageNature = imageNature
                
                self.slug = slug
                
                self.templateTag = templateTag
                
                self.itemCode = itemCode
                
            }

            public func duplicate() -> ProductDetails {
                let dict = self.dictionary!
                let copy = ProductDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
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
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hsnCode = try container.decode(Int.self, forKey: .hsnCode)
                
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
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
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
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    media = try container.decode([[String: Any]].self, forKey: .media)
                
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
                    countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
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
                    images = try container.decode([[String: Any]].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)
                
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
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    templateTag = try container.decode(String.self, forKey: .templateTag)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
                
                
                try? container.encodeIfPresent(isSet, forKey: .isSet)
                
                
                
                
                try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
                
                
                
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                
                
                
                try? container.encodeIfPresent(brandUid, forKey: .brandUid)
                
                
                
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                
                
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                
                
                
                try? container.encodeIfPresent(media, forKey: .media)
                
                
                
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                
                
                
                try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                
                
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                
                
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(templateTag, forKey: .templateTag)
                
                
                
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                
            }
            
        }
        
        /*
            Model: Products
            Used By: Catalog
        */
        class Products: Codable {
            
            public var price: Price1?
            
            public var sizes: [Size]?
            
            public var maxQuantity: Int?
            
            public var minQuantity: Int?
            
            public var productUid: Int?
            
            public var autoSelect: Bool?
            
            public var allowRemove: Bool?
            
            public var productDetails: ProductDetails?
            
            public var autoAddToCart: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case sizes = "sizes"
                
                case maxQuantity = "max_quantity"
                
                case minQuantity = "min_quantity"
                
                case productUid = "product_uid"
                
                case autoSelect = "auto_select"
                
                case allowRemove = "allow_remove"
                
                case productDetails = "product_details"
                
                case autoAddToCart = "auto_add_to_cart"
                
            }

            public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price1?, productDetails: ProductDetails?, productUid: Int?, sizes: [Size]?) {
                
                self.price = price
                
                self.sizes = sizes
                
                self.maxQuantity = maxQuantity
                
                self.minQuantity = minQuantity
                
                self.productUid = productUid
                
                self.autoSelect = autoSelect
                
                self.allowRemove = allowRemove
                
                self.productDetails = productDetails
                
                self.autoAddToCart = autoAddToCart
                
            }

            public func duplicate() -> Products {
                let dict = self.dictionary!
                let copy = Products(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    price = try container.decode(Price1.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([Size].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productUid = try container.decode(Int.self, forKey: .productUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
                
                
                
                
                try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
                
                
                
                
                try? container.encodeIfPresent(productUid, forKey: .productUid)
                
                
                
                
                try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
                
                
                
                
                try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
                
                
                
                
                try? container.encodeIfPresent(productDetails, forKey: .productDetails)
                
                
                
                
                try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
                
                
            }
            
        }
        
        /*
            Model: GetGroupedProducts
            Used By: Catalog
        */
        class GetGroupedProducts: Codable {
            
            public var slug: String?
            
            public var products: [Products]?
            
            public var choice: String?
            
            public var pageVisibility: [String]?
            
            public var companyId: Int?
            
            public var name: String?
            
            public var meta: [String: Any]?
            
            public var sameStoreAssignment: Bool?
            
            public var logo: String?
            
            public var active: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case products = "products"
                
                case choice = "choice"
                
                case pageVisibility = "page_visibility"
                
                case companyId = "company_id"
                
                case name = "name"
                
                case meta = "meta"
                
                case sameStoreAssignment = "same_store_assignment"
                
                case logo = "logo"
                
                case active = "active"
                
            }

            public init(active: Bool?, choice: String?, companyId: Int?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [Products]?, sameStoreAssignment: Bool?, slug: String?) {
                
                self.slug = slug
                
                self.products = products
                
                self.choice = choice
                
                self.pageVisibility = pageVisibility
                
                self.companyId = companyId
                
                self.name = name
                
                self.meta = meta
                
                self.sameStoreAssignment = sameStoreAssignment
                
                self.logo = logo
                
                self.active = active
                
            }

            public func duplicate() -> GetGroupedProducts {
                let dict = self.dictionary!
                let copy = GetGroupedProducts(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    products = try container.decode([Products].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    choice = try container.decode(String.self, forKey: .choice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
                
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
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
                
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
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                
                
                
                try? container.encodeIfPresent(choice, forKey: .choice)
                
                
                
                
                try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
                
                
                
                
                try? container.encodeIfPresent(companyId, forKey: .companyId)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
            }
            
        }
        
        /*
            Model: ProductBundle
            Used By: Catalog
        */
        class ProductBundle: Codable {
            
            public var items: [GetGroupedProducts]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [GetGroupedProducts]?) {
                
                self.items = items
                
            }

            public func duplicate() -> ProductBundle {
                let dict = self.dictionary!
                let copy = ProductBundle(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([GetGroupedProducts].self, forKey: .items)
                
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
