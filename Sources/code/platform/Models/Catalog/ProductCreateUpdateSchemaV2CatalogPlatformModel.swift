

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var teaserTag: TeaserTag?

        public var isActive: Bool?

        public var currency: String

        public var multiSize: Bool?

        public var customJson: [String: Any]?

        public var productPublish: ProductPublish?

        public var media: [Media1]?

        public var variantMedia: [String: Any]?

        public var categorySlug: String

        public var shortDescription: String?

        public var uid: Int?

        public var returnConfig: ReturnConfig

        public var sizeGuide: String?

        public var action: String?

        public var taxIdentifier: TaxIdentifier

        public var isDependent: Bool?

        public var isSet: Bool?

        public var itemType: String

        public var itemCode: String

        public var brandUid: Int

        public var bulkJobId: String?

        public var noOfBoxes: Int?

        public var slug: String

        public var variantGroup: [String: Any]?

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var tags: [String]?

        public var description: String?

        public var departments: [Int]

        public var attributes: [String: Any]?

        public var sizes: [[String: Any]]

        public var highlights: [String]?

        public var changeRequestId: [String: Any]?

        public var countryOfOrigin: String

        public var requester: String?

        public var netQuantity: NetQuantity?

        public var companyId: Int

        public var name: String

        public var productGroupTag: [String]?

        public var customOrder: CustomOrder?

        public var templateTag: String

        public var trader: [Trader]

        public enum CodingKeys: String, CodingKey {
            case teaserTag = "teaser_tag"

            case isActive = "is_active"

            case currency

            case multiSize = "multi_size"

            case customJson = "_custom_json"

            case productPublish = "product_publish"

            case media

            case variantMedia = "variant_media"

            case categorySlug = "category_slug"

            case shortDescription = "short_description"

            case uid

            case returnConfig = "return_config"

            case sizeGuide = "size_guide"

            case action

            case taxIdentifier = "tax_identifier"

            case isDependent = "is_dependent"

            case isSet = "is_set"

            case itemType = "item_type"

            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case bulkJobId = "bulk_job_id"

            case noOfBoxes = "no_of_boxes"

            case slug

            case variantGroup = "variant_group"

            case variants

            case isImageLessProduct = "is_image_less_product"

            case tags

            case description

            case departments

            case attributes

            case sizes

            case highlights

            case changeRequestId = "change_request_id"

            case countryOfOrigin = "country_of_origin"

            case requester

            case netQuantity = "net_quantity"

            case companyId = "company_id"

            case name

            case productGroupTag = "product_group_tag"

            case customOrder = "custom_order"

            case templateTag = "template_tag"

            case trader
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.teaserTag = teaserTag

            self.isActive = isActive

            self.currency = currency

            self.multiSize = multiSize

            self.customJson = customJson

            self.productPublish = productPublish

            self.media = media

            self.variantMedia = variantMedia

            self.categorySlug = categorySlug

            self.shortDescription = shortDescription

            self.uid = uid

            self.returnConfig = returnConfig

            self.sizeGuide = sizeGuide

            self.action = action

            self.taxIdentifier = taxIdentifier

            self.isDependent = isDependent

            self.isSet = isSet

            self.itemType = itemType

            self.itemCode = itemCode

            self.brandUid = brandUid

            self.bulkJobId = bulkJobId

            self.noOfBoxes = noOfBoxes

            self.slug = slug

            self.variantGroup = variantGroup

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.tags = tags

            self.description = description

            self.departments = departments

            self.attributes = attributes

            self.sizes = sizes

            self.highlights = highlights

            self.changeRequestId = changeRequestId

            self.countryOfOrigin = countryOfOrigin

            self.requester = requester

            self.netQuantity = netQuantity

            self.companyId = companyId

            self.name = name

            self.productGroupTag = productGroupTag

            self.customOrder = customOrder

            self.templateTag = templateTag

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            trader = try container.decode([Trader].self, forKey: .trader)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(trader, forKey: .trader)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var teaserTag: TeaserTag?

        public var isActive: Bool?

        public var currency: String

        public var multiSize: Bool?

        public var customJson: [String: Any]?

        public var productPublish: ProductPublish?

        public var media: [Media1]?

        public var variantMedia: [String: Any]?

        public var categorySlug: String

        public var shortDescription: String?

        public var uid: Int?

        public var returnConfig: ReturnConfig

        public var sizeGuide: String?

        public var action: String?

        public var taxIdentifier: TaxIdentifier

        public var isDependent: Bool?

        public var isSet: Bool?

        public var itemType: String

        public var itemCode: String

        public var brandUid: Int

        public var bulkJobId: String?

        public var noOfBoxes: Int?

        public var slug: String

        public var variantGroup: [String: Any]?

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var tags: [String]?

        public var description: String?

        public var departments: [Int]

        public var attributes: [String: Any]?

        public var sizes: [[String: Any]]

        public var highlights: [String]?

        public var changeRequestId: [String: Any]?

        public var countryOfOrigin: String

        public var requester: String?

        public var netQuantity: NetQuantity?

        public var companyId: Int

        public var name: String

        public var productGroupTag: [String]?

        public var customOrder: CustomOrder?

        public var templateTag: String

        public var trader: [Trader]

        public enum CodingKeys: String, CodingKey {
            case teaserTag = "teaser_tag"

            case isActive = "is_active"

            case currency

            case multiSize = "multi_size"

            case customJson = "_custom_json"

            case productPublish = "product_publish"

            case media

            case variantMedia = "variant_media"

            case categorySlug = "category_slug"

            case shortDescription = "short_description"

            case uid

            case returnConfig = "return_config"

            case sizeGuide = "size_guide"

            case action

            case taxIdentifier = "tax_identifier"

            case isDependent = "is_dependent"

            case isSet = "is_set"

            case itemType = "item_type"

            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case bulkJobId = "bulk_job_id"

            case noOfBoxes = "no_of_boxes"

            case slug

            case variantGroup = "variant_group"

            case variants

            case isImageLessProduct = "is_image_less_product"

            case tags

            case description

            case departments

            case attributes

            case sizes

            case highlights

            case changeRequestId = "change_request_id"

            case countryOfOrigin = "country_of_origin"

            case requester

            case netQuantity = "net_quantity"

            case companyId = "company_id"

            case name

            case productGroupTag = "product_group_tag"

            case customOrder = "custom_order"

            case templateTag = "template_tag"

            case trader
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.teaserTag = teaserTag

            self.isActive = isActive

            self.currency = currency

            self.multiSize = multiSize

            self.customJson = customJson

            self.productPublish = productPublish

            self.media = media

            self.variantMedia = variantMedia

            self.categorySlug = categorySlug

            self.shortDescription = shortDescription

            self.uid = uid

            self.returnConfig = returnConfig

            self.sizeGuide = sizeGuide

            self.action = action

            self.taxIdentifier = taxIdentifier

            self.isDependent = isDependent

            self.isSet = isSet

            self.itemType = itemType

            self.itemCode = itemCode

            self.brandUid = brandUid

            self.bulkJobId = bulkJobId

            self.noOfBoxes = noOfBoxes

            self.slug = slug

            self.variantGroup = variantGroup

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.tags = tags

            self.description = description

            self.departments = departments

            self.attributes = attributes

            self.sizes = sizes

            self.highlights = highlights

            self.changeRequestId = changeRequestId

            self.countryOfOrigin = countryOfOrigin

            self.requester = requester

            self.netQuantity = netQuantity

            self.companyId = companyId

            self.name = name

            self.productGroupTag = productGroupTag

            self.customOrder = customOrder

            self.templateTag = templateTag

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            trader = try container.decode([Trader].self, forKey: .trader)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(trader, forKey: .trader)
        }
    }
}
