

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var countryOfOrigin: String

        public var isSet: Bool?

        public var isDependent: Bool?

        public var isActive: Bool?

        public var brandUid: Int

        public var itemCode: String

        public var productGroupTag: [String]?

        public var companyId: Int

        public var sizes: [[String: Any]]

        public var media: [Media1]?

        public var description: String?

        public var variantMedia: [String: Any]?

        public var templateTag: String

        public var currency: String

        public var teaserTag: TeaserTag?

        public var requester: String?

        public var variants: [String: Any]?

        public var categorySlug: String

        public var uid: Int?

        public var productPublish: ProductPublish1?

        public var taxIdentifier: TaxIdentifier

        public var attributes: [String: Any]?

        public var noOfBoxes: Int?

        public var variantGroup: [String: Any]?

        public var shortDescription: String?

        public var customOrder: CustomOrder?

        public var itemType: String

        public var trader: [Trader]

        public var tags: [String]?

        public var action: String?

        public var changeRequestId: [String: Any]?

        public var departments: [Int]

        public var netQuantity: NetQuantity?

        public var bulkJobId: String?

        public var multiSize: Bool?

        public var returnConfig: ReturnConfig

        public var sizeGuide: String?

        public var slug: String

        public var customJson: [String: Any]?

        public var isImageLessProduct: Bool?

        public var highlights: [String]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case isSet = "is_set"

            case isDependent = "is_dependent"

            case isActive = "is_active"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case productGroupTag = "product_group_tag"

            case companyId = "company_id"

            case sizes

            case media

            case description

            case variantMedia = "variant_media"

            case templateTag = "template_tag"

            case currency

            case teaserTag = "teaser_tag"

            case requester

            case variants

            case categorySlug = "category_slug"

            case uid

            case productPublish = "product_publish"

            case taxIdentifier = "tax_identifier"

            case attributes

            case noOfBoxes = "no_of_boxes"

            case variantGroup = "variant_group"

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case itemType = "item_type"

            case trader

            case tags

            case action

            case changeRequestId = "change_request_id"

            case departments

            case netQuantity = "net_quantity"

            case bulkJobId = "bulk_job_id"

            case multiSize = "multi_size"

            case returnConfig = "return_config"

            case sizeGuide = "size_guide"

            case slug

            case customJson = "_custom_json"

            case isImageLessProduct = "is_image_less_product"

            case highlights

            case name
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.isSet = isSet

            self.isDependent = isDependent

            self.isActive = isActive

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.productGroupTag = productGroupTag

            self.companyId = companyId

            self.sizes = sizes

            self.media = media

            self.description = description

            self.variantMedia = variantMedia

            self.templateTag = templateTag

            self.currency = currency

            self.teaserTag = teaserTag

            self.requester = requester

            self.variants = variants

            self.categorySlug = categorySlug

            self.uid = uid

            self.productPublish = productPublish

            self.taxIdentifier = taxIdentifier

            self.attributes = attributes

            self.noOfBoxes = noOfBoxes

            self.variantGroup = variantGroup

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.itemType = itemType

            self.trader = trader

            self.tags = tags

            self.action = action

            self.changeRequestId = changeRequestId

            self.departments = departments

            self.netQuantity = netQuantity

            self.bulkJobId = bulkJobId

            self.multiSize = multiSize

            self.returnConfig = returnConfig

            self.sizeGuide = sizeGuide

            self.slug = slug

            self.customJson = customJson

            self.isImageLessProduct = isImageLessProduct

            self.highlights = highlights

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish1.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var countryOfOrigin: String

        public var isSet: Bool?

        public var isDependent: Bool?

        public var isActive: Bool?

        public var brandUid: Int

        public var itemCode: String

        public var productGroupTag: [String]?

        public var companyId: Int

        public var sizes: [[String: Any]]

        public var media: [Media1]?

        public var description: String?

        public var variantMedia: [String: Any]?

        public var templateTag: String

        public var currency: String

        public var teaserTag: TeaserTag?

        public var requester: String?

        public var variants: [String: Any]?

        public var categorySlug: String

        public var uid: Int?

        public var productPublish: ProductPublish1?

        public var taxIdentifier: TaxIdentifier

        public var attributes: [String: Any]?

        public var noOfBoxes: Int?

        public var variantGroup: [String: Any]?

        public var shortDescription: String?

        public var customOrder: CustomOrder?

        public var itemType: String

        public var trader: [Trader]

        public var tags: [String]?

        public var action: String?

        public var changeRequestId: [String: Any]?

        public var departments: [Int]

        public var netQuantity: NetQuantity?

        public var bulkJobId: String?

        public var multiSize: Bool?

        public var returnConfig: ReturnConfig

        public var sizeGuide: String?

        public var slug: String

        public var customJson: [String: Any]?

        public var isImageLessProduct: Bool?

        public var highlights: [String]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case isSet = "is_set"

            case isDependent = "is_dependent"

            case isActive = "is_active"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case productGroupTag = "product_group_tag"

            case companyId = "company_id"

            case sizes

            case media

            case description

            case variantMedia = "variant_media"

            case templateTag = "template_tag"

            case currency

            case teaserTag = "teaser_tag"

            case requester

            case variants

            case categorySlug = "category_slug"

            case uid

            case productPublish = "product_publish"

            case taxIdentifier = "tax_identifier"

            case attributes

            case noOfBoxes = "no_of_boxes"

            case variantGroup = "variant_group"

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case itemType = "item_type"

            case trader

            case tags

            case action

            case changeRequestId = "change_request_id"

            case departments

            case netQuantity = "net_quantity"

            case bulkJobId = "bulk_job_id"

            case multiSize = "multi_size"

            case returnConfig = "return_config"

            case sizeGuide = "size_guide"

            case slug

            case customJson = "_custom_json"

            case isImageLessProduct = "is_image_less_product"

            case highlights

            case name
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.isSet = isSet

            self.isDependent = isDependent

            self.isActive = isActive

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.productGroupTag = productGroupTag

            self.companyId = companyId

            self.sizes = sizes

            self.media = media

            self.description = description

            self.variantMedia = variantMedia

            self.templateTag = templateTag

            self.currency = currency

            self.teaserTag = teaserTag

            self.requester = requester

            self.variants = variants

            self.categorySlug = categorySlug

            self.uid = uid

            self.productPublish = productPublish

            self.taxIdentifier = taxIdentifier

            self.attributes = attributes

            self.noOfBoxes = noOfBoxes

            self.variantGroup = variantGroup

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.itemType = itemType

            self.trader = trader

            self.tags = tags

            self.action = action

            self.changeRequestId = changeRequestId

            self.departments = departments

            self.netQuantity = netQuantity

            self.bulkJobId = bulkJobId

            self.multiSize = multiSize

            self.returnConfig = returnConfig

            self.sizeGuide = sizeGuide

            self.slug = slug

            self.customJson = customJson

            self.isImageLessProduct = isImageLessProduct

            self.highlights = highlights

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish1.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
