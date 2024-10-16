

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductListingDetail
        Used By: Catalog
    */
    class ProductListingDetail: Codable {
        
        public var uid: Int?
        
        public var customOrder: ProductDetailCustomOrder?
        
        public var sizes: [String]?
        
        public var categoryMap: ProductCategoryMap?
        
        public var netQuantity: NetQuantity?
        
        public var ratingCount: Int?
        
        public var customMeta: [CustomMetaFields]?
        
        public var similars: [String]?
        
        public var tags: [String]?
        
        public var seo: ApplicationItemSEO?
        
        public var imageNature: String?
        
        public var hasVariant: Bool?
        
        public var itemType: String?
        
        public var description: String?
        
        public var groupedAttributes: [ProductDetailGroupedAttribute]?
        
        public var medias: [Media]?
        
        public var color: String?
        
        public var type: String?
        
        public var productOnlineDate: String?
        
        public var customJson: [String: Any]?
        
        public var itemCode: String?
        
        public var name: String?
        
        public var moq: ApplicationItemMOQ?
        
        public var shortDescription: String?
        
        public var categories: [ProductBrand]?
        
        public var sellable: Bool?
        
        public var attributes: [String: Any]?
        
        public var variants: [ProductVariantListingResponseSchema]?
        
        public var discount: String?
        
        public var tryouts: [String]?
        
        public var identifiers: [String]?
        
        public var slug: String
        
        public var action: ProductListingAction?
        
        public var rating: Double?
        
        public var isDependent: Bool?
        
        public var productGroupTag: [String]?
        
        public var highlights: [String]?
        
        public var price: ProductListingPrice?
        
        public var brand: ProductBrand?
        
        public var teaserTag: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case customOrder = "custom_order"
            
            case sizes = "sizes"
            
            case categoryMap = "category_map"
            
            case netQuantity = "net_quantity"
            
            case ratingCount = "rating_count"
            
            case customMeta = "_custom_meta"
            
            case similars = "similars"
            
            case tags = "tags"
            
            case seo = "seo"
            
            case imageNature = "image_nature"
            
            case hasVariant = "has_variant"
            
            case itemType = "item_type"
            
            case description = "description"
            
            case groupedAttributes = "grouped_attributes"
            
            case medias = "medias"
            
            case color = "color"
            
            case type = "type"
            
            case productOnlineDate = "product_online_date"
            
            case customJson = "_custom_json"
            
            case itemCode = "item_code"
            
            case name = "name"
            
            case moq = "moq"
            
            case shortDescription = "short_description"
            
            case categories = "categories"
            
            case sellable = "sellable"
            
            case attributes = "attributes"
            
            case variants = "variants"
            
            case discount = "discount"
            
            case tryouts = "tryouts"
            
            case identifiers = "identifiers"
            
            case slug = "slug"
            
            case action = "action"
            
            case rating = "rating"
            
            case isDependent = "is_dependent"
            
            case productGroupTag = "product_group_tag"
            
            case highlights = "highlights"
            
            case price = "price"
            
            case brand = "brand"
            
            case teaserTag = "teaser_tag"
            
        }

        public init(action: ProductListingAction? = nil, attributes: [String: Any]? = nil, brand: ProductBrand? = nil, categories: [ProductBrand]? = nil, categoryMap: ProductCategoryMap? = nil, color: String? = nil, customOrder: ProductDetailCustomOrder? = nil, description: String? = nil, discount: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, identifiers: [String]? = nil, imageNature: String? = nil, isDependent: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, moq: ApplicationItemMOQ? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, price: ProductListingPrice? = nil, productGroupTag: [String]? = nil, productOnlineDate: String? = nil, rating: Double? = nil, ratingCount: Int? = nil, sellable: Bool? = nil, seo: ApplicationItemSEO? = nil, shortDescription: String? = nil, similars: [String]? = nil, sizes: [String]? = nil, slug: String, tags: [String]? = nil, teaserTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil, variants: [ProductVariantListingResponseSchema]? = nil, customJson: [String: Any]? = nil, customMeta: [CustomMetaFields]? = nil) {
            
            self.uid = uid
            
            self.customOrder = customOrder
            
            self.sizes = sizes
            
            self.categoryMap = categoryMap
            
            self.netQuantity = netQuantity
            
            self.ratingCount = ratingCount
            
            self.customMeta = customMeta
            
            self.similars = similars
            
            self.tags = tags
            
            self.seo = seo
            
            self.imageNature = imageNature
            
            self.hasVariant = hasVariant
            
            self.itemType = itemType
            
            self.description = description
            
            self.groupedAttributes = groupedAttributes
            
            self.medias = medias
            
            self.color = color
            
            self.type = type
            
            self.productOnlineDate = productOnlineDate
            
            self.customJson = customJson
            
            self.itemCode = itemCode
            
            self.name = name
            
            self.moq = moq
            
            self.shortDescription = shortDescription
            
            self.categories = categories
            
            self.sellable = sellable
            
            self.attributes = attributes
            
            self.variants = variants
            
            self.discount = discount
            
            self.tryouts = tryouts
            
            self.identifiers = identifiers
            
            self.slug = slug
            
            self.action = action
            
            self.rating = rating
            
            self.isDependent = isDependent
            
            self.productGroupTag = productGroupTag
            
            self.highlights = highlights
            
            self.price = price
            
            self.brand = brand
            
            self.teaserTag = teaserTag
            
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
                customOrder = try container.decode(ProductDetailCustomOrder.self, forKey: .customOrder)
            
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
                categoryMap = try container.decode(ProductCategoryMap.self, forKey: .categoryMap)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)
            
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
                customMeta = try container.decode([CustomMetaFields].self, forKey: .customMeta)
            
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
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)
            
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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
            
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
                medias = try container.decode([Media].self, forKey: .medias)
            
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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)
            
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
                itemCode = try container.decode(String.self, forKey: .itemCode)
            
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
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)
            
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
                categories = try container.decode([ProductBrand].self, forKey: .categories)
            
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
                attributes = try container.decode([String: Any].self, forKey: .attributes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                variants = try container.decode([ProductVariantListingResponseSchema].self, forKey: .variants)
            
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
                tryouts = try container.decode([String].self, forKey: .tryouts)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                identifiers = try container.decode([String].self, forKey: .identifiers)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            slug = try container.decode(String.self, forKey: .slug)
            
            
            
            
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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)
            
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
                price = try container.decode(ProductListingPrice.self, forKey: .price)
            
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
                teaserTag = try container.decode(String.self, forKey: .teaserTag)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            try? container.encodeIfPresent(categoryMap, forKey: .categoryMap)
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(moq, forKey: .moq)
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
        }
        
    }
}
