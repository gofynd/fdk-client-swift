

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductPatchSchemaV3
        Used By: Catalog
    */

    class ProductPatchSchemaV3: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var attributes: [String: Any]?
        
        public var countryOfOrigin: String?
        
        public var customOrder: CustomOrder?
        
        public var description: String?
        
        public var highlights: [String]?
        
        public var isActive: Bool?
        
        public var isDependent: Bool?
        
        public var media: [Media]?
        
        public var multiSize: Bool?
        
        public var name: String?
        
        public var netQuantity: NetQuantity?
        
        public var noOfBoxes: Int?
        
        public var productGroupTag: [String]?
        
        public var productPublish: ProductPublish?
        
        public var returnConfig: ReturnConfig?
        
        public var shortDescription: String?
        
        public var sizeGuide: String?
        
        public var sizes: [ProductSizePatch]?
        
        public var tags: [String]?
        
        public var taxIdentifier: TaxIdentifierV3?
        
        public var hsCode: String?
        
        public var teaserTag: TeaserTag?
        
        public var templateTag: String?
        
        public var trader: [Trader]?
        
        public var variantGroup: [String: Any]?
        
        public var variantMedia: [String: Any]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case attributes = "attributes"
            
            case countryOfOrigin = "country_of_origin"
            
            case customOrder = "custom_order"
            
            case description = "description"
            
            case highlights = "highlights"
            
            case isActive = "is_active"
            
            case isDependent = "is_dependent"
            
            case media = "media"
            
            case multiSize = "multi_size"
            
            case name = "name"
            
            case netQuantity = "net_quantity"
            
            case noOfBoxes = "no_of_boxes"
            
            case productGroupTag = "product_group_tag"
            
            case productPublish = "product_publish"
            
            case returnConfig = "return_config"
            
            case shortDescription = "short_description"
            
            case sizeGuide = "size_guide"
            
            case sizes = "sizes"
            
            case tags = "tags"
            
            case taxIdentifier = "tax_identifier"
            
            case hsCode = "hs_code"
            
            case teaserTag = "teaser_tag"
            
            case templateTag = "template_tag"
            
            case trader = "trader"
            
            case variantGroup = "variant_group"
            
            case variantMedia = "variant_media"
            
            case variants = "variants"
            
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, customOrder: CustomOrder? = nil, description: String? = nil, highlights: [String]? = nil, hsCode: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, media: [Media]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, returnConfig: ReturnConfig? = nil, shortDescription: String? = nil, sizes: [ProductSizePatch]? = nil, sizeGuide: String? = nil, tags: [String]? = nil, taxIdentifier: TaxIdentifierV3? = nil, teaserTag: TeaserTag? = nil, templateTag: String? = nil, trader: [Trader]? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.attributes = attributes
            
            self.countryOfOrigin = countryOfOrigin
            
            self.customOrder = customOrder
            
            self.description = description
            
            self.highlights = highlights
            
            self.isActive = isActive
            
            self.isDependent = isDependent
            
            self.media = media
            
            self.multiSize = multiSize
            
            self.name = name
            
            self.netQuantity = netQuantity
            
            self.noOfBoxes = noOfBoxes
            
            self.productGroupTag = productGroupTag
            
            self.productPublish = productPublish
            
            self.returnConfig = returnConfig
            
            self.shortDescription = shortDescription
            
            self.sizeGuide = sizeGuide
            
            self.sizes = sizes
            
            self.tags = tags
            
            self.taxIdentifier = taxIdentifier
            
            self.hsCode = hsCode
            
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
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
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
                    customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
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
                    sizeGuide = try container.decode(String.self, forKey: .sizeGuide)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([ProductSizePatch].self, forKey: .sizes)
                
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
                    taxIdentifier = try container.decode(TaxIdentifierV3.self, forKey: .taxIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsCode = try container.decode(String.self, forKey: .hsCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)
                
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
                    trader = try container.decode([Trader].self, forKey: .trader)
                
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
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)
            
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            
            try? container.encodeIfPresent(productPublish, forKey: .productPublish)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(hsCode, forKey: .hsCode)
            
            
            
            
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
        Model: ProductPatchSchemaV3
        Used By: Catalog
    */

    class ProductPatchSchemaV3: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var attributes: [String: Any]?
        
        public var countryOfOrigin: String?
        
        public var customOrder: CustomOrder?
        
        public var description: String?
        
        public var highlights: [String]?
        
        public var isActive: Bool?
        
        public var isDependent: Bool?
        
        public var media: [Media]?
        
        public var multiSize: Bool?
        
        public var name: String?
        
        public var netQuantity: NetQuantity?
        
        public var noOfBoxes: Int?
        
        public var productGroupTag: [String]?
        
        public var productPublish: ProductPublish?
        
        public var returnConfig: ReturnConfig?
        
        public var shortDescription: String?
        
        public var sizeGuide: String?
        
        public var sizes: [ProductSizePatch]?
        
        public var tags: [String]?
        
        public var taxIdentifier: TaxIdentifierV3?
        
        public var hsCode: String?
        
        public var teaserTag: TeaserTag?
        
        public var templateTag: String?
        
        public var trader: [Trader]?
        
        public var variantGroup: [String: Any]?
        
        public var variantMedia: [String: Any]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case attributes = "attributes"
            
            case countryOfOrigin = "country_of_origin"
            
            case customOrder = "custom_order"
            
            case description = "description"
            
            case highlights = "highlights"
            
            case isActive = "is_active"
            
            case isDependent = "is_dependent"
            
            case media = "media"
            
            case multiSize = "multi_size"
            
            case name = "name"
            
            case netQuantity = "net_quantity"
            
            case noOfBoxes = "no_of_boxes"
            
            case productGroupTag = "product_group_tag"
            
            case productPublish = "product_publish"
            
            case returnConfig = "return_config"
            
            case shortDescription = "short_description"
            
            case sizeGuide = "size_guide"
            
            case sizes = "sizes"
            
            case tags = "tags"
            
            case taxIdentifier = "tax_identifier"
            
            case hsCode = "hs_code"
            
            case teaserTag = "teaser_tag"
            
            case templateTag = "template_tag"
            
            case trader = "trader"
            
            case variantGroup = "variant_group"
            
            case variantMedia = "variant_media"
            
            case variants = "variants"
            
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, customOrder: CustomOrder? = nil, description: String? = nil, highlights: [String]? = nil, hsCode: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, media: [Media]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, returnConfig: ReturnConfig? = nil, shortDescription: String? = nil, sizes: [ProductSizePatch]? = nil, sizeGuide: String? = nil, tags: [String]? = nil, taxIdentifier: TaxIdentifierV3? = nil, teaserTag: TeaserTag? = nil, templateTag: String? = nil, trader: [Trader]? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.attributes = attributes
            
            self.countryOfOrigin = countryOfOrigin
            
            self.customOrder = customOrder
            
            self.description = description
            
            self.highlights = highlights
            
            self.isActive = isActive
            
            self.isDependent = isDependent
            
            self.media = media
            
            self.multiSize = multiSize
            
            self.name = name
            
            self.netQuantity = netQuantity
            
            self.noOfBoxes = noOfBoxes
            
            self.productGroupTag = productGroupTag
            
            self.productPublish = productPublish
            
            self.returnConfig = returnConfig
            
            self.shortDescription = shortDescription
            
            self.sizeGuide = sizeGuide
            
            self.sizes = sizes
            
            self.tags = tags
            
            self.taxIdentifier = taxIdentifier
            
            self.hsCode = hsCode
            
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
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
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
                    customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
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
                    sizeGuide = try container.decode(String.self, forKey: .sizeGuide)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([ProductSizePatch].self, forKey: .sizes)
                
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
                    taxIdentifier = try container.decode(TaxIdentifierV3.self, forKey: .taxIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsCode = try container.decode(String.self, forKey: .hsCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)
                
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
                    trader = try container.decode([Trader].self, forKey: .trader)
                
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
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)
            
            
            
            
            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
            
            
            
            
            try? container.encodeIfPresent(productPublish, forKey: .productPublish)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(hsCode, forKey: .hsCode)
            
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)
            
            
            
            
            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}


