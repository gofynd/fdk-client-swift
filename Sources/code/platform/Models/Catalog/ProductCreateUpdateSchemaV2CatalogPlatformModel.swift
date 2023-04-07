

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var multiSize: Bool?

        public var changeRequestId: [String: Any]?

        public var variantGroup: [String: Any]?

        public var companyId: Int

        public var itemCode: String

        public var sizeGuide: String?

        public var slug: String

        public var isDependent: Bool?

        public var description: String?

        public var customJson: [String: Any]?

        public var variants: [String: Any]?

        public var trader: [Trader]

        public var teaserTag: TeaserTag?

        public var name: String

        public var media: [Media1]?

        public var departments: [Int]

        public var categorySlug: String

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var brandUid: Int

        public var noOfBoxes: Int?

        public var attributes: [String: Any]?

        public var currency: String

        public var isActive: Bool?

        public var shortDescription: String?

        public var itemType: String

        public var tags: [String]?

        public var requester: String?

        public var uid: Int?

        public var isSet: Bool?

        public var netQuantity: NetQuantity?

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var productGroupTag: [String]?

        public var sizes: [[String: Any]]

        public var productPublish: ProductPublish1?

        public var action: String?

        public var variantMedia: [String: Any]?

        public var bulkJobId: String?

        public var returnConfig: ReturnConfig

        public var countryOfOrigin: String

        public var highlights: [String]?

        public enum CodingKeys: String, CodingKey {
            case multiSize = "multi_size"

            case changeRequestId = "change_request_id"

            case variantGroup = "variant_group"

            case companyId = "company_id"

            case itemCode = "item_code"

            case sizeGuide = "size_guide"

            case slug

            case isDependent = "is_dependent"

            case description

            case customJson = "_custom_json"

            case variants

            case trader

            case teaserTag = "teaser_tag"

            case name

            case media

            case departments

            case categorySlug = "category_slug"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case brandUid = "brand_uid"

            case noOfBoxes = "no_of_boxes"

            case attributes

            case currency

            case isActive = "is_active"

            case shortDescription = "short_description"

            case itemType = "item_type"

            case tags

            case requester

            case uid

            case isSet = "is_set"

            case netQuantity = "net_quantity"

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case productGroupTag = "product_group_tag"

            case sizes

            case productPublish = "product_publish"

            case action

            case variantMedia = "variant_media"

            case bulkJobId = "bulk_job_id"

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case highlights
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.multiSize = multiSize

            self.changeRequestId = changeRequestId

            self.variantGroup = variantGroup

            self.companyId = companyId

            self.itemCode = itemCode

            self.sizeGuide = sizeGuide

            self.slug = slug

            self.isDependent = isDependent

            self.description = description

            self.customJson = customJson

            self.variants = variants

            self.trader = trader

            self.teaserTag = teaserTag

            self.name = name

            self.media = media

            self.departments = departments

            self.categorySlug = categorySlug

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.brandUid = brandUid

            self.noOfBoxes = noOfBoxes

            self.attributes = attributes

            self.currency = currency

            self.isActive = isActive

            self.shortDescription = shortDescription

            self.itemType = itemType

            self.tags = tags

            self.requester = requester

            self.uid = uid

            self.isSet = isSet

            self.netQuantity = netQuantity

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.productGroupTag = productGroupTag

            self.sizes = sizes

            self.productPublish = productPublish

            self.action = action

            self.variantMedia = variantMedia

            self.bulkJobId = bulkJobId

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.highlights = highlights
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                productPublish = try container.decode(ProductPublish1.self, forKey: .productPublish)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(highlights, forKey: .highlights)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var multiSize: Bool?

        public var changeRequestId: [String: Any]?

        public var variantGroup: [String: Any]?

        public var companyId: Int

        public var itemCode: String

        public var sizeGuide: String?

        public var slug: String

        public var isDependent: Bool?

        public var description: String?

        public var customJson: [String: Any]?

        public var variants: [String: Any]?

        public var trader: [Trader]

        public var teaserTag: TeaserTag?

        public var name: String

        public var media: [Media1]?

        public var departments: [Int]

        public var categorySlug: String

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var brandUid: Int

        public var noOfBoxes: Int?

        public var attributes: [String: Any]?

        public var currency: String

        public var isActive: Bool?

        public var shortDescription: String?

        public var itemType: String

        public var tags: [String]?

        public var requester: String?

        public var uid: Int?

        public var isSet: Bool?

        public var netQuantity: NetQuantity?

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var productGroupTag: [String]?

        public var sizes: [[String: Any]]

        public var productPublish: ProductPublish1?

        public var action: String?

        public var variantMedia: [String: Any]?

        public var bulkJobId: String?

        public var returnConfig: ReturnConfig

        public var countryOfOrigin: String

        public var highlights: [String]?

        public enum CodingKeys: String, CodingKey {
            case multiSize = "multi_size"

            case changeRequestId = "change_request_id"

            case variantGroup = "variant_group"

            case companyId = "company_id"

            case itemCode = "item_code"

            case sizeGuide = "size_guide"

            case slug

            case isDependent = "is_dependent"

            case description

            case customJson = "_custom_json"

            case variants

            case trader

            case teaserTag = "teaser_tag"

            case name

            case media

            case departments

            case categorySlug = "category_slug"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case brandUid = "brand_uid"

            case noOfBoxes = "no_of_boxes"

            case attributes

            case currency

            case isActive = "is_active"

            case shortDescription = "short_description"

            case itemType = "item_type"

            case tags

            case requester

            case uid

            case isSet = "is_set"

            case netQuantity = "net_quantity"

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case productGroupTag = "product_group_tag"

            case sizes

            case productPublish = "product_publish"

            case action

            case variantMedia = "variant_media"

            case bulkJobId = "bulk_job_id"

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case highlights
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.multiSize = multiSize

            self.changeRequestId = changeRequestId

            self.variantGroup = variantGroup

            self.companyId = companyId

            self.itemCode = itemCode

            self.sizeGuide = sizeGuide

            self.slug = slug

            self.isDependent = isDependent

            self.description = description

            self.customJson = customJson

            self.variants = variants

            self.trader = trader

            self.teaserTag = teaserTag

            self.name = name

            self.media = media

            self.departments = departments

            self.categorySlug = categorySlug

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.brandUid = brandUid

            self.noOfBoxes = noOfBoxes

            self.attributes = attributes

            self.currency = currency

            self.isActive = isActive

            self.shortDescription = shortDescription

            self.itemType = itemType

            self.tags = tags

            self.requester = requester

            self.uid = uid

            self.isSet = isSet

            self.netQuantity = netQuantity

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.productGroupTag = productGroupTag

            self.sizes = sizes

            self.productPublish = productPublish

            self.action = action

            self.variantMedia = variantMedia

            self.bulkJobId = bulkJobId

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.highlights = highlights
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                productPublish = try container.decode(ProductPublish1.self, forKey: .productPublish)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(highlights, forKey: .highlights)
        }
    }
}
