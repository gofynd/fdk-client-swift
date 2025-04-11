

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationProductsSchema
        Used By: Catalog
    */

    class ApplicationProductsSchema: Codable {
        
        
        public var attributes: [String: Any]?
        
        public var brand: ProductBrand?
        
        public var color: String?
        
        public var description: String?
        
        public var discount: String?
        
        public var hasVariant: Bool?
        
        public var highlights: [String]?
        
        public var imageNature: String
        
        public var itemCode: String
        
        public var itemType: String
        
        public var medias: [Media]?
        
        public var name: String
        
        public var price: ProductListingPrice?
        
        public var productOnlineDate: String?
        
        public var promoMeta: [String: Any]?
        
        public var rating: Double?
        
        public var ratingCount: Int?
        
        public var sellable: Bool?
        
        public var shortDescription: String?
        
        public var similars: [String]?
        
        public var slug: String
        
        public var teaserTag: [String: Any]?
        
        public var tryouts: [String]?
        
        public var type: String?
        
        public var uid: Int
        
        public var popularity: Int?
        
        public var brandUid: Int
        
        public var categoryUid: Int
        
        public var verificationStatus: Int?
        
        public var channelIdentifier: String?
        
        public var categorySlug: String?
        
        public var sizeGuide: String?
        
        public var l3Categories: [Int]
        
        public var storeIds: [Int]?
        
        public var companyIds: [Int]?
        
        public var departments: [Int]
        
        public var tags: [String]?
        
        public var l3CategoryNames: [String]?
        
        public var sizes: [String]?
        
        public var productGroupTag: [String]?
        
        public var multiSize: Bool
        
        public var isGift: Bool
        
        public var isCod: Bool
        
        public var isDependent: Bool
        
        public var isAvailable: Bool
        
        public var moq: ApplicationItemMOQ
        
        public var seo: ApplicationItemSEO
        
        public var variants: [String: Any]?
        
        public var variantMedia: [String: Any]?
        
        public var variantGroup: [String: Any]?
        
        public var multiCategories: [MultiCategoriesSchema]?
        
        public var templateTag: String?
        
        public var netQuantity: [String: Any]?
        
        public var customOrder: CustomOrder?
        
        public var countryOfOrigin: String
        
        public var customJson: [String: Any]?
        
        public var identifiers: [String]?
        
        public var itemId: Int?
        
        public var customMeta: [CustomMeta]?
        
        public var discountPercentage: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
            case brand = "brand"
            
            case color = "color"
            
            case description = "description"
            
            case discount = "discount"
            
            case hasVariant = "has_variant"
            
            case highlights = "highlights"
            
            case imageNature = "image_nature"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
            case medias = "medias"
            
            case name = "name"
            
            case price = "price"
            
            case productOnlineDate = "product_online_date"
            
            case promoMeta = "promo_meta"
            
            case rating = "rating"
            
            case ratingCount = "rating_count"
            
            case sellable = "sellable"
            
            case shortDescription = "short_description"
            
            case similars = "similars"
            
            case slug = "slug"
            
            case teaserTag = "teaser_tag"
            
            case tryouts = "tryouts"
            
            case type = "type"
            
            case uid = "uid"
            
            case popularity = "popularity"
            
            case brandUid = "brand_uid"
            
            case categoryUid = "category_uid"
            
            case verificationStatus = "verification_status"
            
            case channelIdentifier = "channel_identifier"
            
            case categorySlug = "category_slug"
            
            case sizeGuide = "size_guide"
            
            case l3Categories = "l3_categories"
            
            case storeIds = "store_ids"
            
            case companyIds = "company_ids"
            
            case departments = "departments"
            
            case tags = "tags"
            
            case l3CategoryNames = "l3_category_names"
            
            case sizes = "sizes"
            
            case productGroupTag = "product_group_tag"
            
            case multiSize = "multi_size"
            
            case isGift = "is_gift"
            
            case isCod = "is_cod"
            
            case isDependent = "is_dependent"
            
            case isAvailable = "is_available"
            
            case moq = "moq"
            
            case seo = "seo"
            
            case variants = "variants"
            
            case variantMedia = "variant_media"
            
            case variantGroup = "variant_group"
            
            case multiCategories = "multi_categories"
            
            case templateTag = "template_tag"
            
            case netQuantity = "net_quantity"
            
            case customOrder = "custom_order"
            
            case countryOfOrigin = "country_of_origin"
            
            case customJson = "_custom_json"
            
            case identifiers = "identifiers"
            
            case itemId = "item_id"
            
            case customMeta = "_custom_meta"
            
            case discountPercentage = "discount_percentage"
            
        }

        public init(attributes: [String: Any]? = nil, brand: ProductBrand? = nil, brandUid: Int, categorySlug: String? = nil, categoryUid: Int, channelIdentifier: String? = nil, color: String? = nil, companyIds: [Int]? = nil, countryOfOrigin: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, discount: String? = nil, discountPercentage: Int? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, identifiers: [String]? = nil, imageNature: String, isAvailable: Bool, isCod: Bool, isDependent: Bool, isGift: Bool, itemCode: String, itemId: Int? = nil, itemType: String, l3Categories: [Int], l3CategoryNames: [String]? = nil, medias: [Media]? = nil, moq: ApplicationItemMOQ, multiCategories: [MultiCategoriesSchema]? = nil, multiSize: Bool, name: String, netQuantity: [String: Any]? = nil, popularity: Int? = nil, price: ProductListingPrice? = nil, productGroupTag: [String]? = nil, productOnlineDate: String? = nil, promoMeta: [String: Any]? = nil, rating: Double? = nil, ratingCount: Int? = nil, sellable: Bool? = nil, seo: ApplicationItemSEO, shortDescription: String? = nil, similars: [String]? = nil, sizes: [String]? = nil, sizeGuide: String? = nil, slug: String, storeIds: [Int]? = nil, tags: [String]? = nil, teaserTag: [String: Any]? = nil, templateTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, verificationStatus: Int? = nil, customJson: [String: Any]? = nil, customMeta: [CustomMeta]? = nil) {
            
            self.attributes = attributes
            
            self.brand = brand
            
            self.color = color
            
            self.description = description
            
            self.discount = discount
            
            self.hasVariant = hasVariant
            
            self.highlights = highlights
            
            self.imageNature = imageNature
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
            self.medias = medias
            
            self.name = name
            
            self.price = price
            
            self.productOnlineDate = productOnlineDate
            
            self.promoMeta = promoMeta
            
            self.rating = rating
            
            self.ratingCount = ratingCount
            
            self.sellable = sellable
            
            self.shortDescription = shortDescription
            
            self.similars = similars
            
            self.slug = slug
            
            self.teaserTag = teaserTag
            
            self.tryouts = tryouts
            
            self.type = type
            
            self.uid = uid
            
            self.popularity = popularity
            
            self.brandUid = brandUid
            
            self.categoryUid = categoryUid
            
            self.verificationStatus = verificationStatus
            
            self.channelIdentifier = channelIdentifier
            
            self.categorySlug = categorySlug
            
            self.sizeGuide = sizeGuide
            
            self.l3Categories = l3Categories
            
            self.storeIds = storeIds
            
            self.companyIds = companyIds
            
            self.departments = departments
            
            self.tags = tags
            
            self.l3CategoryNames = l3CategoryNames
            
            self.sizes = sizes
            
            self.productGroupTag = productGroupTag
            
            self.multiSize = multiSize
            
            self.isGift = isGift
            
            self.isCod = isCod
            
            self.isDependent = isDependent
            
            self.isAvailable = isAvailable
            
            self.moq = moq
            
            self.seo = seo
            
            self.variants = variants
            
            self.variantMedia = variantMedia
            
            self.variantGroup = variantGroup
            
            self.multiCategories = multiCategories
            
            self.templateTag = templateTag
            
            self.netQuantity = netQuantity
            
            self.customOrder = customOrder
            
            self.countryOfOrigin = countryOfOrigin
            
            self.customJson = customJson
            
            self.identifiers = identifiers
            
            self.itemId = itemId
            
            self.customMeta = customMeta
            
            self.discountPercentage = discountPercentage
            
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
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                    highlights = try container.decode([String].self, forKey: .highlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                imageNature = try container.decode(String.self, forKey: .imageNature)
                
            
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                itemType = try container.decode(String.self, forKey: .itemType)
                
            
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
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
                    promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)
                
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
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                
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
                    similars = try container.decode([String].self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    popularity = try container.decode(Int.self, forKey: .popularity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brandUid = try container.decode(Int.self, forKey: .brandUid)
                
            
            
            
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)
                
            
            
            
                do {
                    verificationStatus = try container.decode(Int.self, forKey: .verificationStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categorySlug = try container.decode(String.self, forKey: .categorySlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizeGuide = try container.decode(String.self, forKey: .sizeGuide)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                l3Categories = try container.decode([Int].self, forKey: .l3Categories)
                
            
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyIds = try container.decode([Int].self, forKey: .companyIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3CategoryNames = try container.decode([String].self, forKey: .l3CategoryNames)
                
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
                    productGroupTag = try container.decode([String].self, forKey: .productGroupTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                multiSize = try container.decode(Bool.self, forKey: .multiSize)
                
            
            
            
                isGift = try container.decode(Bool.self, forKey: .isGift)
                
            
            
            
                isCod = try container.decode(Bool.self, forKey: .isCod)
                
            
            
            
                isDependent = try container.decode(Bool.self, forKey: .isDependent)
                
            
            
            
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                
            
            
            
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)
                
            
            
            
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)
                
            
            
            
                do {
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiCategories = try container.decode([MultiCategoriesSchema].self, forKey: .multiCategories)
                
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
                    netQuantity = try container.decode([String: Any].self, forKey: .netQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
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
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([CustomMeta].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPercentage = try container.decode(Int.self, forKey: .discountPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            
            
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(popularity, forKey: .popularity)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)
            
            
            
            
            try? container.encodeIfPresent(verificationStatus, forKey: .verificationStatus)
            
            
            
            
            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)
            
            
            
            
            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)
            
            
            
            
            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
            
            
            
            
            try? container.encodeIfPresent(l3Categories, forKey: .l3Categories)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(l3CategoryNames, forKey: .l3CategoryNames)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            
            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
            
            
            
            
            try? container.encodeIfPresent(moq, forKey: .moq)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)
            
            
            
            
            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)
            
            
            
            
            try? container.encodeIfPresent(multiCategories, forKey: .multiCategories)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationProductsSchema
        Used By: Catalog
    */

    class ApplicationProductsSchema: Codable {
        
        
        public var attributes: [String: Any]?
        
        public var brand: ProductBrand?
        
        public var color: String?
        
        public var description: String?
        
        public var discount: String?
        
        public var hasVariant: Bool?
        
        public var highlights: [String]?
        
        public var imageNature: String
        
        public var itemCode: String
        
        public var itemType: String
        
        public var medias: [Media]?
        
        public var name: String
        
        public var price: ProductListingPrice?
        
        public var productOnlineDate: String?
        
        public var promoMeta: [String: Any]?
        
        public var rating: Double?
        
        public var ratingCount: Int?
        
        public var sellable: Bool?
        
        public var shortDescription: String?
        
        public var similars: [String]?
        
        public var slug: String
        
        public var teaserTag: [String: Any]?
        
        public var tryouts: [String]?
        
        public var type: String?
        
        public var uid: Int
        
        public var popularity: Int?
        
        public var brandUid: Int
        
        public var categoryUid: Int
        
        public var verificationStatus: Int?
        
        public var channelIdentifier: String?
        
        public var categorySlug: String?
        
        public var sizeGuide: String?
        
        public var l3Categories: [Int]
        
        public var storeIds: [Int]?
        
        public var companyIds: [Int]?
        
        public var departments: [Int]
        
        public var tags: [String]?
        
        public var l3CategoryNames: [String]?
        
        public var sizes: [String]?
        
        public var productGroupTag: [String]?
        
        public var multiSize: Bool
        
        public var isGift: Bool
        
        public var isCod: Bool
        
        public var isDependent: Bool
        
        public var isAvailable: Bool
        
        public var moq: ApplicationItemMOQ
        
        public var seo: ApplicationItemSEO
        
        public var variants: [String: Any]?
        
        public var variantMedia: [String: Any]?
        
        public var variantGroup: [String: Any]?
        
        public var multiCategories: [MultiCategoriesSchema]?
        
        public var templateTag: String?
        
        public var netQuantity: [String: Any]?
        
        public var customOrder: CustomOrder?
        
        public var countryOfOrigin: String
        
        public var customJson: [String: Any]?
        
        public var identifiers: [String]?
        
        public var itemId: Int?
        
        public var customMeta: [CustomMeta]?
        
        public var discountPercentage: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
            case brand = "brand"
            
            case color = "color"
            
            case description = "description"
            
            case discount = "discount"
            
            case hasVariant = "has_variant"
            
            case highlights = "highlights"
            
            case imageNature = "image_nature"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
            case medias = "medias"
            
            case name = "name"
            
            case price = "price"
            
            case productOnlineDate = "product_online_date"
            
            case promoMeta = "promo_meta"
            
            case rating = "rating"
            
            case ratingCount = "rating_count"
            
            case sellable = "sellable"
            
            case shortDescription = "short_description"
            
            case similars = "similars"
            
            case slug = "slug"
            
            case teaserTag = "teaser_tag"
            
            case tryouts = "tryouts"
            
            case type = "type"
            
            case uid = "uid"
            
            case popularity = "popularity"
            
            case brandUid = "brand_uid"
            
            case categoryUid = "category_uid"
            
            case verificationStatus = "verification_status"
            
            case channelIdentifier = "channel_identifier"
            
            case categorySlug = "category_slug"
            
            case sizeGuide = "size_guide"
            
            case l3Categories = "l3_categories"
            
            case storeIds = "store_ids"
            
            case companyIds = "company_ids"
            
            case departments = "departments"
            
            case tags = "tags"
            
            case l3CategoryNames = "l3_category_names"
            
            case sizes = "sizes"
            
            case productGroupTag = "product_group_tag"
            
            case multiSize = "multi_size"
            
            case isGift = "is_gift"
            
            case isCod = "is_cod"
            
            case isDependent = "is_dependent"
            
            case isAvailable = "is_available"
            
            case moq = "moq"
            
            case seo = "seo"
            
            case variants = "variants"
            
            case variantMedia = "variant_media"
            
            case variantGroup = "variant_group"
            
            case multiCategories = "multi_categories"
            
            case templateTag = "template_tag"
            
            case netQuantity = "net_quantity"
            
            case customOrder = "custom_order"
            
            case countryOfOrigin = "country_of_origin"
            
            case customJson = "_custom_json"
            
            case identifiers = "identifiers"
            
            case itemId = "item_id"
            
            case customMeta = "_custom_meta"
            
            case discountPercentage = "discount_percentage"
            
        }

        public init(attributes: [String: Any]? = nil, brand: ProductBrand? = nil, brandUid: Int, categorySlug: String? = nil, categoryUid: Int, channelIdentifier: String? = nil, color: String? = nil, companyIds: [Int]? = nil, countryOfOrigin: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, discount: String? = nil, discountPercentage: Int? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, identifiers: [String]? = nil, imageNature: String, isAvailable: Bool, isCod: Bool, isDependent: Bool, isGift: Bool, itemCode: String, itemId: Int? = nil, itemType: String, l3Categories: [Int], l3CategoryNames: [String]? = nil, medias: [Media]? = nil, moq: ApplicationItemMOQ, multiCategories: [MultiCategoriesSchema]? = nil, multiSize: Bool, name: String, netQuantity: [String: Any]? = nil, popularity: Int? = nil, price: ProductListingPrice? = nil, productGroupTag: [String]? = nil, productOnlineDate: String? = nil, promoMeta: [String: Any]? = nil, rating: Double? = nil, ratingCount: Int? = nil, sellable: Bool? = nil, seo: ApplicationItemSEO, shortDescription: String? = nil, similars: [String]? = nil, sizes: [String]? = nil, sizeGuide: String? = nil, slug: String, storeIds: [Int]? = nil, tags: [String]? = nil, teaserTag: [String: Any]? = nil, templateTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, verificationStatus: Int? = nil, customJson: [String: Any]? = nil, customMeta: [CustomMeta]? = nil) {
            
            self.attributes = attributes
            
            self.brand = brand
            
            self.color = color
            
            self.description = description
            
            self.discount = discount
            
            self.hasVariant = hasVariant
            
            self.highlights = highlights
            
            self.imageNature = imageNature
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
            self.medias = medias
            
            self.name = name
            
            self.price = price
            
            self.productOnlineDate = productOnlineDate
            
            self.promoMeta = promoMeta
            
            self.rating = rating
            
            self.ratingCount = ratingCount
            
            self.sellable = sellable
            
            self.shortDescription = shortDescription
            
            self.similars = similars
            
            self.slug = slug
            
            self.teaserTag = teaserTag
            
            self.tryouts = tryouts
            
            self.type = type
            
            self.uid = uid
            
            self.popularity = popularity
            
            self.brandUid = brandUid
            
            self.categoryUid = categoryUid
            
            self.verificationStatus = verificationStatus
            
            self.channelIdentifier = channelIdentifier
            
            self.categorySlug = categorySlug
            
            self.sizeGuide = sizeGuide
            
            self.l3Categories = l3Categories
            
            self.storeIds = storeIds
            
            self.companyIds = companyIds
            
            self.departments = departments
            
            self.tags = tags
            
            self.l3CategoryNames = l3CategoryNames
            
            self.sizes = sizes
            
            self.productGroupTag = productGroupTag
            
            self.multiSize = multiSize
            
            self.isGift = isGift
            
            self.isCod = isCod
            
            self.isDependent = isDependent
            
            self.isAvailable = isAvailable
            
            self.moq = moq
            
            self.seo = seo
            
            self.variants = variants
            
            self.variantMedia = variantMedia
            
            self.variantGroup = variantGroup
            
            self.multiCategories = multiCategories
            
            self.templateTag = templateTag
            
            self.netQuantity = netQuantity
            
            self.customOrder = customOrder
            
            self.countryOfOrigin = countryOfOrigin
            
            self.customJson = customJson
            
            self.identifiers = identifiers
            
            self.itemId = itemId
            
            self.customMeta = customMeta
            
            self.discountPercentage = discountPercentage
            
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
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                    highlights = try container.decode([String].self, forKey: .highlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                imageNature = try container.decode(String.self, forKey: .imageNature)
                
            
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                itemType = try container.decode(String.self, forKey: .itemType)
                
            
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
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
                    promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)
                
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
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                
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
                    similars = try container.decode([String].self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    popularity = try container.decode(Int.self, forKey: .popularity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brandUid = try container.decode(Int.self, forKey: .brandUid)
                
            
            
            
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)
                
            
            
            
                do {
                    verificationStatus = try container.decode(Int.self, forKey: .verificationStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categorySlug = try container.decode(String.self, forKey: .categorySlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizeGuide = try container.decode(String.self, forKey: .sizeGuide)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                l3Categories = try container.decode([Int].self, forKey: .l3Categories)
                
            
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyIds = try container.decode([Int].self, forKey: .companyIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3CategoryNames = try container.decode([String].self, forKey: .l3CategoryNames)
                
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
                    productGroupTag = try container.decode([String].self, forKey: .productGroupTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                multiSize = try container.decode(Bool.self, forKey: .multiSize)
                
            
            
            
                isGift = try container.decode(Bool.self, forKey: .isGift)
                
            
            
            
                isCod = try container.decode(Bool.self, forKey: .isCod)
                
            
            
            
                isDependent = try container.decode(Bool.self, forKey: .isDependent)
                
            
            
            
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                
            
            
            
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)
                
            
            
            
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)
                
            
            
            
                do {
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiCategories = try container.decode([MultiCategoriesSchema].self, forKey: .multiCategories)
                
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
                    netQuantity = try container.decode([String: Any].self, forKey: .netQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
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
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([CustomMeta].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPercentage = try container.decode(Int.self, forKey: .discountPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            
            
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(popularity, forKey: .popularity)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)
            
            
            
            
            try? container.encodeIfPresent(verificationStatus, forKey: .verificationStatus)
            
            
            
            
            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)
            
            
            
            
            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)
            
            
            
            
            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
            
            
            
            
            try? container.encodeIfPresent(l3Categories, forKey: .l3Categories)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(l3CategoryNames, forKey: .l3CategoryNames)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            
            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
            
            
            
            
            try? container.encodeIfPresent(moq, forKey: .moq)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)
            
            
            
            
            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)
            
            
            
            
            try? container.encodeIfPresent(multiCategories, forKey: .multiCategories)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
        }
        
    }
}


