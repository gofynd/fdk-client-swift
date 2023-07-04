

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var tags: [String]?

        public var multiSize: Bool?

        public var netQuantity: NetQuantity?

        public var itemCode: String

        public var categorySlug: String

        public var attributes: [String: Any]?

        public var highlights: [String]?

        public var action: String?

        public var variantGroup: [String: Any]?

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish1?

        public var sizeGuide: String?

        public var uid: Int?

        public var departments: [Int]

        public var changeRequestId: [String: Any]?

        public var shortDescription: String?

        public var companyId: Int

        public var templateTag: String

        public var variantMedia: [String: Any]?

        public var returnConfig: ReturnConfig

        public var slug: String

        public var variants: [String: Any]?

        public var countryOfOrigin: String

        public var isActive: Bool?

        public var taxIdentifier: TaxIdentifier

        public var name: String

        public var isDependent: Bool?

        public var media: [Media]?

        public var customOrder: CustomOrder?

        public var itemType: String

        public var requester: String?

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var sizes: [[String: Any]]

        public var productGroupTag: [String]?

        public var isSet: Bool?

        public var description: String?

        public var currency: String

        public var trader: [Trader]

        public var brandUid: Int

        public var bulkJobId: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case tags

            case multiSize = "multi_size"

            case netQuantity = "net_quantity"

            case itemCode = "item_code"

            case categorySlug = "category_slug"

            case attributes

            case highlights

            case action

            case variantGroup = "variant_group"

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case sizeGuide = "size_guide"

            case uid

            case departments

            case changeRequestId = "change_request_id"

            case shortDescription = "short_description"

            case companyId = "company_id"

            case templateTag = "template_tag"

            case variantMedia = "variant_media"

            case returnConfig = "return_config"

            case slug

            case variants

            case countryOfOrigin = "country_of_origin"

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case name

            case isDependent = "is_dependent"

            case media

            case customOrder = "custom_order"

            case itemType = "item_type"

            case requester

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case sizes

            case productGroupTag = "product_group_tag"

            case isSet = "is_set"

            case description

            case currency

            case trader

            case brandUid = "brand_uid"

            case bulkJobId = "bulk_job_id"

            case customJson = "_custom_json"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.tags = tags

            self.multiSize = multiSize

            self.netQuantity = netQuantity

            self.itemCode = itemCode

            self.categorySlug = categorySlug

            self.attributes = attributes

            self.highlights = highlights

            self.action = action

            self.variantGroup = variantGroup

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.sizeGuide = sizeGuide

            self.uid = uid

            self.departments = departments

            self.changeRequestId = changeRequestId

            self.shortDescription = shortDescription

            self.companyId = companyId

            self.templateTag = templateTag

            self.variantMedia = variantMedia

            self.returnConfig = returnConfig

            self.slug = slug

            self.variants = variants

            self.countryOfOrigin = countryOfOrigin

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.name = name

            self.isDependent = isDependent

            self.media = media

            self.customOrder = customOrder

            self.itemType = itemType

            self.requester = requester

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.sizes = sizes

            self.productGroupTag = productGroupTag

            self.isSet = isSet

            self.description = description

            self.currency = currency

            self.trader = trader

            self.brandUid = brandUid

            self.bulkJobId = bulkJobId

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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

            do {
                action = try container.decode(String.self, forKey: .action)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            name = try container.decode(String.self, forKey: .name)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media].self, forKey: .media)

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

            do {
                requester = try container.decode(String.self, forKey: .requester)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var tags: [String]?

        public var multiSize: Bool?

        public var netQuantity: NetQuantity?

        public var itemCode: String

        public var categorySlug: String

        public var attributes: [String: Any]?

        public var highlights: [String]?

        public var action: String?

        public var variantGroup: [String: Any]?

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish1?

        public var sizeGuide: String?

        public var uid: Int?

        public var departments: [Int]

        public var changeRequestId: [String: Any]?

        public var shortDescription: String?

        public var companyId: Int

        public var templateTag: String

        public var variantMedia: [String: Any]?

        public var returnConfig: ReturnConfig

        public var slug: String

        public var variants: [String: Any]?

        public var countryOfOrigin: String

        public var isActive: Bool?

        public var taxIdentifier: TaxIdentifier

        public var name: String

        public var isDependent: Bool?

        public var media: [Media]?

        public var customOrder: CustomOrder?

        public var itemType: String

        public var requester: String?

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var sizes: [[String: Any]]

        public var productGroupTag: [String]?

        public var isSet: Bool?

        public var description: String?

        public var currency: String

        public var trader: [Trader]

        public var brandUid: Int

        public var bulkJobId: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case tags

            case multiSize = "multi_size"

            case netQuantity = "net_quantity"

            case itemCode = "item_code"

            case categorySlug = "category_slug"

            case attributes

            case highlights

            case action

            case variantGroup = "variant_group"

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case sizeGuide = "size_guide"

            case uid

            case departments

            case changeRequestId = "change_request_id"

            case shortDescription = "short_description"

            case companyId = "company_id"

            case templateTag = "template_tag"

            case variantMedia = "variant_media"

            case returnConfig = "return_config"

            case slug

            case variants

            case countryOfOrigin = "country_of_origin"

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case name

            case isDependent = "is_dependent"

            case media

            case customOrder = "custom_order"

            case itemType = "item_type"

            case requester

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case sizes

            case productGroupTag = "product_group_tag"

            case isSet = "is_set"

            case description

            case currency

            case trader

            case brandUid = "brand_uid"

            case bulkJobId = "bulk_job_id"

            case customJson = "_custom_json"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.tags = tags

            self.multiSize = multiSize

            self.netQuantity = netQuantity

            self.itemCode = itemCode

            self.categorySlug = categorySlug

            self.attributes = attributes

            self.highlights = highlights

            self.action = action

            self.variantGroup = variantGroup

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.sizeGuide = sizeGuide

            self.uid = uid

            self.departments = departments

            self.changeRequestId = changeRequestId

            self.shortDescription = shortDescription

            self.companyId = companyId

            self.templateTag = templateTag

            self.variantMedia = variantMedia

            self.returnConfig = returnConfig

            self.slug = slug

            self.variants = variants

            self.countryOfOrigin = countryOfOrigin

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.name = name

            self.isDependent = isDependent

            self.media = media

            self.customOrder = customOrder

            self.itemType = itemType

            self.requester = requester

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.sizes = sizes

            self.productGroupTag = productGroupTag

            self.isSet = isSet

            self.description = description

            self.currency = currency

            self.trader = trader

            self.brandUid = brandUid

            self.bulkJobId = bulkJobId

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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

            do {
                action = try container.decode(String.self, forKey: .action)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            name = try container.decode(String.self, forKey: .name)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media].self, forKey: .media)

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

            do {
                requester = try container.decode(String.self, forKey: .requester)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
