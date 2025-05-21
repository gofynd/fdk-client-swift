

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductCreateSchemaV2
        Used By: Catalog
    */

    class ProductCreateSchemaV2: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var action: String?
        
        public var attributes: [String: Any]?
        
        public var brandUid: Int
        
        public var bulkJobId: String?
        
        public var categorySlug: String
        
        public var changeRequestId: String?
        
        public var companyId: Int
        
        public var countryOfOrigin: String
        
        public var currency: String
        
        public var customOrder: CustomOrder?
        
        public var departments: [Int]
        
        public var description: String?
        
        public var highlights: [String]?
        
        public var isActive: Bool?
        
        public var isDependent: Bool?
        
        public var isImageLessProduct: Bool?
        
        public var isSet: Bool?
        
        public var itemCode: String
        
        public var itemType: String
        
        public var media: [Media]?
        
        public var multiSize: Bool?
        
        public var name: String
        
        public var netQuantity: NetQuantity?
        
        public var noOfBoxes: Int?
        
        public var productGroupTag: [String]?
        
        public var productPublish: ProductPublish?
        
        public var requester: String?
        
        public var returnConfig: ReturnConfig
        
        public var shortDescription: String?
        
        public var sizeGuide: String?
        
        public var sizes: [[String: Any]]
        
        public var slug: String
        
        public var tags: [String]?
        
        public var taxIdentifier: TaxIdentifier
        
        public var teaserTag: TeaserTag?
        
        public var templateTag: String
        
        public var trader: [Trader]
        
        public var variantGroup: [String: Any]?
        
        public var variantMedia: [String: Any]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case action = "action"
            
            case attributes = "attributes"
            
            case brandUid = "brand_uid"
            
            case bulkJobId = "bulk_job_id"
            
            case categorySlug = "category_slug"
            
            case changeRequestId = "change_request_id"
            
            case companyId = "company_id"
            
            case countryOfOrigin = "country_of_origin"
            
            case currency = "currency"
            
            case customOrder = "custom_order"
            
            case departments = "departments"
            
            case description = "description"
            
            case highlights = "highlights"
            
            case isActive = "is_active"
            
            case isDependent = "is_dependent"
            
            case isImageLessProduct = "is_image_less_product"
            
            case isSet = "is_set"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
            case media = "media"
            
            case multiSize = "multi_size"
            
            case name = "name"
            
            case netQuantity = "net_quantity"
            
            case noOfBoxes = "no_of_boxes"
            
            case productGroupTag = "product_group_tag"
            
            case productPublish = "product_publish"
            
            case requester = "requester"
            
            case returnConfig = "return_config"
            
            case shortDescription = "short_description"
            
            case sizeGuide = "size_guide"
            
            case sizes = "sizes"
            
            case slug = "slug"
            
            case tags = "tags"
            
            case taxIdentifier = "tax_identifier"
            
            case teaserTag = "teaser_tag"
            
            case templateTag = "template_tag"
            
            case trader = "trader"
            
            case variantGroup = "variant_group"
            
            case variantMedia = "variant_media"
            
            case variants = "variants"
            
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.action = action
            
            self.attributes = attributes
            
            self.brandUid = brandUid
            
            self.bulkJobId = bulkJobId
            
            self.categorySlug = categorySlug
            
            self.changeRequestId = changeRequestId
            
            self.companyId = companyId
            
            self.countryOfOrigin = countryOfOrigin
            
            self.currency = currency
            
            self.customOrder = customOrder
            
            self.departments = departments
            
            self.description = description
            
            self.highlights = highlights
            
            self.isActive = isActive
            
            self.isDependent = isDependent
            
            self.isImageLessProduct = isImageLessProduct
            
            self.isSet = isSet
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
            self.media = media
            
            self.multiSize = multiSize
            
            self.name = name
            
            self.netQuantity = netQuantity
            
            self.noOfBoxes = noOfBoxes
            
            self.productGroupTag = productGroupTag
            
            self.productPublish = productPublish
            
            self.requester = requester
            
            self.returnConfig = returnConfig
            
            self.shortDescription = shortDescription
            
            self.sizeGuide = sizeGuide
            
            self.sizes = sizes
            
            self.slug = slug
            
            self.tags = tags
            
            self.taxIdentifier = taxIdentifier
            
            self.teaserTag = teaserTag
            
            self.templateTag = templateTag
            
            self.trader = trader
            
            self.variantGroup = variantGroup
            
            self.variantMedia = variantMedia
            
            self.variants = variants
            
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
                    action = try container.decode(String.self, forKey: .action)
                
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
                
            
            
                brandUid = try container.decode(Int.self, forKey: .brandUid)
                
            
            
            
                do {
                    bulkJobId = try container.decode(String.self, forKey: .bulkJobId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                categorySlug = try container.decode(String.self, forKey: .categorySlug)
                
            
            
            
                do {
                    changeRequestId = try container.decode(String.self, forKey: .changeRequestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)
                
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
                
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                itemType = try container.decode(String.self, forKey: .itemType)
                
            
            
            
                do {
                    media = try container.decode([Media].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiSize = try container.decode(Bool.self, forKey: .multiSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)
                
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
                    productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requester = try container.decode(String.self, forKey: .requester)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
            
            
            
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
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
                
            
            
                sizes = try container.decode([[String: Any]].self, forKey: .sizes)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
                
            
            
            
                do {
                    teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                templateTag = try container.decode(String.self, forKey: .templateTag)
                
            
            
            
                trader = try container.decode([Trader].self, forKey: .trader)
                
            
            
            
                do {
                    variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)
                
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
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)
            
            
            
            
            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)
            
            
            
            
            try? container.encodeIfPresent(changeRequestId, forKey: .changeRequestId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            
            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)
            
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            
            try? container.encodeIfPresent(productPublish, forKey: .productPublish)
            
            
            
            
            try? container.encodeIfPresent(requester, forKey: .requester)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)
            
            
            
            
            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductCreateSchemaV2
        Used By: Catalog
    */

    class ProductCreateSchemaV2: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var action: String?
        
        public var attributes: [String: Any]?
        
        public var brandUid: Int
        
        public var bulkJobId: String?
        
        public var categorySlug: String
        
        public var changeRequestId: String?
        
        public var companyId: Int
        
        public var countryOfOrigin: String
        
        public var currency: String
        
        public var customOrder: CustomOrder?
        
        public var departments: [Int]
        
        public var description: String?
        
        public var highlights: [String]?
        
        public var isActive: Bool?
        
        public var isDependent: Bool?
        
        public var isImageLessProduct: Bool?
        
        public var isSet: Bool?
        
        public var itemCode: String
        
        public var itemType: String
        
        public var media: [Media]?
        
        public var multiSize: Bool?
        
        public var name: String
        
        public var netQuantity: NetQuantity?
        
        public var noOfBoxes: Int?
        
        public var productGroupTag: [String]?
        
        public var productPublish: ProductPublish?
        
        public var requester: String?
        
        public var returnConfig: ReturnConfig
        
        public var shortDescription: String?
        
        public var sizeGuide: String?
        
        public var sizes: [[String: Any]]
        
        public var slug: String
        
        public var tags: [String]?
        
        public var taxIdentifier: TaxIdentifier
        
        public var teaserTag: TeaserTag?
        
        public var templateTag: String
        
        public var trader: [Trader]
        
        public var variantGroup: [String: Any]?
        
        public var variantMedia: [String: Any]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case action = "action"
            
            case attributes = "attributes"
            
            case brandUid = "brand_uid"
            
            case bulkJobId = "bulk_job_id"
            
            case categorySlug = "category_slug"
            
            case changeRequestId = "change_request_id"
            
            case companyId = "company_id"
            
            case countryOfOrigin = "country_of_origin"
            
            case currency = "currency"
            
            case customOrder = "custom_order"
            
            case departments = "departments"
            
            case description = "description"
            
            case highlights = "highlights"
            
            case isActive = "is_active"
            
            case isDependent = "is_dependent"
            
            case isImageLessProduct = "is_image_less_product"
            
            case isSet = "is_set"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
            case media = "media"
            
            case multiSize = "multi_size"
            
            case name = "name"
            
            case netQuantity = "net_quantity"
            
            case noOfBoxes = "no_of_boxes"
            
            case productGroupTag = "product_group_tag"
            
            case productPublish = "product_publish"
            
            case requester = "requester"
            
            case returnConfig = "return_config"
            
            case shortDescription = "short_description"
            
            case sizeGuide = "size_guide"
            
            case sizes = "sizes"
            
            case slug = "slug"
            
            case tags = "tags"
            
            case taxIdentifier = "tax_identifier"
            
            case teaserTag = "teaser_tag"
            
            case templateTag = "template_tag"
            
            case trader = "trader"
            
            case variantGroup = "variant_group"
            
            case variantMedia = "variant_media"
            
            case variants = "variants"
            
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.action = action
            
            self.attributes = attributes
            
            self.brandUid = brandUid
            
            self.bulkJobId = bulkJobId
            
            self.categorySlug = categorySlug
            
            self.changeRequestId = changeRequestId
            
            self.companyId = companyId
            
            self.countryOfOrigin = countryOfOrigin
            
            self.currency = currency
            
            self.customOrder = customOrder
            
            self.departments = departments
            
            self.description = description
            
            self.highlights = highlights
            
            self.isActive = isActive
            
            self.isDependent = isDependent
            
            self.isImageLessProduct = isImageLessProduct
            
            self.isSet = isSet
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
            self.media = media
            
            self.multiSize = multiSize
            
            self.name = name
            
            self.netQuantity = netQuantity
            
            self.noOfBoxes = noOfBoxes
            
            self.productGroupTag = productGroupTag
            
            self.productPublish = productPublish
            
            self.requester = requester
            
            self.returnConfig = returnConfig
            
            self.shortDescription = shortDescription
            
            self.sizeGuide = sizeGuide
            
            self.sizes = sizes
            
            self.slug = slug
            
            self.tags = tags
            
            self.taxIdentifier = taxIdentifier
            
            self.teaserTag = teaserTag
            
            self.templateTag = templateTag
            
            self.trader = trader
            
            self.variantGroup = variantGroup
            
            self.variantMedia = variantMedia
            
            self.variants = variants
            
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
                    action = try container.decode(String.self, forKey: .action)
                
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
                
            
            
                brandUid = try container.decode(Int.self, forKey: .brandUid)
                
            
            
            
                do {
                    bulkJobId = try container.decode(String.self, forKey: .bulkJobId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                categorySlug = try container.decode(String.self, forKey: .categorySlug)
                
            
            
            
                do {
                    changeRequestId = try container.decode(String.self, forKey: .changeRequestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)
                
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
                
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                itemType = try container.decode(String.self, forKey: .itemType)
                
            
            
            
                do {
                    media = try container.decode([Media].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiSize = try container.decode(Bool.self, forKey: .multiSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)
                
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
                    productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requester = try container.decode(String.self, forKey: .requester)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
            
            
            
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
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
                
            
            
                sizes = try container.decode([[String: Any]].self, forKey: .sizes)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
                
            
            
            
                do {
                    teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                templateTag = try container.decode(String.self, forKey: .templateTag)
                
            
            
            
                trader = try container.decode([Trader].self, forKey: .trader)
                
            
            
            
                do {
                    variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)
                
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
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)
            
            
            
            
            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)
            
            
            
            
            try? container.encodeIfPresent(changeRequestId, forKey: .changeRequestId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            
            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)
            
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            
            try? container.encodeIfPresent(productPublish, forKey: .productPublish)
            
            
            
            
            try? container.encodeIfPresent(requester, forKey: .requester)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)
            
            
            
            
            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}


