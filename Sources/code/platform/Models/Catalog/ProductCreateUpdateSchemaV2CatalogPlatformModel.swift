

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var sizeGuide: String?

        public var changeRequestId: [String: Any]?

        public var multiSize: Bool?

        public var productGroupTag: [String]?

        public var isDependent: Bool?

        public var tags: [String]?

        public var departments: [Int]

        public var media: [Media1]?

        public var description: String?

        public var categorySlug: String

        public var variantGroup: [String: Any]?

        public var bulkJobId: String?

        public var shortDescription: String?

        public var action: String?

        public var name: String

        public var uid: Int?

        public var currency: String

        public var requester: String?

        public var isImageLessProduct: Bool?

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish1?

        public var isSet: Bool?

        public var slug: String

        public var trader: [Trader]

        public var brandUid: Int

        public var sizes: [[String: Any]]

        public var isActive: Bool?

        public var returnConfig: ReturnConfig

        public var itemType: String

        public var countryOfOrigin: String

        public var customOrder: CustomOrder?

        public var attributes: [String: Any]?

        public var companyId: Int

        public var customJson: [String: Any]?

        public var netQuantity: NetQuantity?

        public var templateTag: String

        public var variants: [String: Any]?

        public var variantMedia: [String: Any]?

        public var itemCode: String

        public var noOfBoxes: Int?

        public var highlights: [String]?

        public var taxIdentifier: TaxIdentifier

        public enum CodingKeys: String, CodingKey {
            case sizeGuide = "size_guide"

            case changeRequestId = "change_request_id"

            case multiSize = "multi_size"

            case productGroupTag = "product_group_tag"

            case isDependent = "is_dependent"

            case tags

            case departments

            case media

            case description

            case categorySlug = "category_slug"

            case variantGroup = "variant_group"

            case bulkJobId = "bulk_job_id"

            case shortDescription = "short_description"

            case action

            case name

            case uid

            case currency

            case requester

            case isImageLessProduct = "is_image_less_product"

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case isSet = "is_set"

            case slug

            case trader

            case brandUid = "brand_uid"

            case sizes

            case isActive = "is_active"

            case returnConfig = "return_config"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case customOrder = "custom_order"

            case attributes

            case companyId = "company_id"

            case customJson = "_custom_json"

            case netQuantity = "net_quantity"

            case templateTag = "template_tag"

            case variants

            case variantMedia = "variant_media"

            case itemCode = "item_code"

            case noOfBoxes = "no_of_boxes"

            case highlights

            case taxIdentifier = "tax_identifier"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.sizeGuide = sizeGuide

            self.changeRequestId = changeRequestId

            self.multiSize = multiSize

            self.productGroupTag = productGroupTag

            self.isDependent = isDependent

            self.tags = tags

            self.departments = departments

            self.media = media

            self.description = description

            self.categorySlug = categorySlug

            self.variantGroup = variantGroup

            self.bulkJobId = bulkJobId

            self.shortDescription = shortDescription

            self.action = action

            self.name = name

            self.uid = uid

            self.currency = currency

            self.requester = requester

            self.isImageLessProduct = isImageLessProduct

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.isSet = isSet

            self.slug = slug

            self.trader = trader

            self.brandUid = brandUid

            self.sizes = sizes

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.customOrder = customOrder

            self.attributes = attributes

            self.companyId = companyId

            self.customJson = customJson

            self.netQuantity = netQuantity

            self.templateTag = templateTag

            self.variants = variants

            self.variantMedia = variantMedia

            self.itemCode = itemCode

            self.noOfBoxes = noOfBoxes

            self.highlights = highlights

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var sizeGuide: String?

        public var changeRequestId: [String: Any]?

        public var multiSize: Bool?

        public var productGroupTag: [String]?

        public var isDependent: Bool?

        public var tags: [String]?

        public var departments: [Int]

        public var media: [Media1]?

        public var description: String?

        public var categorySlug: String

        public var variantGroup: [String: Any]?

        public var bulkJobId: String?

        public var shortDescription: String?

        public var action: String?

        public var name: String

        public var uid: Int?

        public var currency: String

        public var requester: String?

        public var isImageLessProduct: Bool?

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish1?

        public var isSet: Bool?

        public var slug: String

        public var trader: [Trader]

        public var brandUid: Int

        public var sizes: [[String: Any]]

        public var isActive: Bool?

        public var returnConfig: ReturnConfig

        public var itemType: String

        public var countryOfOrigin: String

        public var customOrder: CustomOrder?

        public var attributes: [String: Any]?

        public var companyId: Int

        public var customJson: [String: Any]?

        public var netQuantity: NetQuantity?

        public var templateTag: String

        public var variants: [String: Any]?

        public var variantMedia: [String: Any]?

        public var itemCode: String

        public var noOfBoxes: Int?

        public var highlights: [String]?

        public var taxIdentifier: TaxIdentifier

        public enum CodingKeys: String, CodingKey {
            case sizeGuide = "size_guide"

            case changeRequestId = "change_request_id"

            case multiSize = "multi_size"

            case productGroupTag = "product_group_tag"

            case isDependent = "is_dependent"

            case tags

            case departments

            case media

            case description

            case categorySlug = "category_slug"

            case variantGroup = "variant_group"

            case bulkJobId = "bulk_job_id"

            case shortDescription = "short_description"

            case action

            case name

            case uid

            case currency

            case requester

            case isImageLessProduct = "is_image_less_product"

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case isSet = "is_set"

            case slug

            case trader

            case brandUid = "brand_uid"

            case sizes

            case isActive = "is_active"

            case returnConfig = "return_config"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case customOrder = "custom_order"

            case attributes

            case companyId = "company_id"

            case customJson = "_custom_json"

            case netQuantity = "net_quantity"

            case templateTag = "template_tag"

            case variants

            case variantMedia = "variant_media"

            case itemCode = "item_code"

            case noOfBoxes = "no_of_boxes"

            case highlights

            case taxIdentifier = "tax_identifier"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.sizeGuide = sizeGuide

            self.changeRequestId = changeRequestId

            self.multiSize = multiSize

            self.productGroupTag = productGroupTag

            self.isDependent = isDependent

            self.tags = tags

            self.departments = departments

            self.media = media

            self.description = description

            self.categorySlug = categorySlug

            self.variantGroup = variantGroup

            self.bulkJobId = bulkJobId

            self.shortDescription = shortDescription

            self.action = action

            self.name = name

            self.uid = uid

            self.currency = currency

            self.requester = requester

            self.isImageLessProduct = isImageLessProduct

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.isSet = isSet

            self.slug = slug

            self.trader = trader

            self.brandUid = brandUid

            self.sizes = sizes

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.customOrder = customOrder

            self.attributes = attributes

            self.companyId = companyId

            self.customJson = customJson

            self.netQuantity = netQuantity

            self.templateTag = templateTag

            self.variants = variants

            self.variantMedia = variantMedia

            self.itemCode = itemCode

            self.noOfBoxes = noOfBoxes

            self.highlights = highlights

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
