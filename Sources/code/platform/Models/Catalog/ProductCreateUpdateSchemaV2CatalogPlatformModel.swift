

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var noOfBoxes: Int?

        public var sizes: [[String: Any]]

        public var isDependent: Bool?

        public var attributes: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var itemCode: String

        public var slug: String

        public var currency: String

        public var companyId: Int

        public var requester: String?

        public var variants: [String: Any]?

        public var productPublish: ProductPublish?

        public var isActive: Bool?

        public var media: [Media2]?

        public var netQuantity: NetQuantity?

        public var customOrder: CustomOrder?

        public var sizeGuide: String?

        public var departments: [Int]

        public var action: String?

        public var highlights: [String]?

        public var categorySlug: String

        public var variantGroup: [String: Any]?

        public var tags: [String]?

        public var brandUid: Int

        public var isImageLessProduct: Bool?

        public var trader: [Trader]

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var productGroupTag: [String]?

        public var teaserTag: TeaserTag?

        public var name: String

        public var bulkJobId: String?

        public var isSet: Bool?

        public var taxIdentifier: TaxIdentifier

        public var variantMedia: [String: Any]?

        public var uid: Int?

        public var multiSize: Bool?

        public var itemType: String

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig

        public var description: String?

        public var templateTag: String

        public enum CodingKeys: String, CodingKey {
            case noOfBoxes = "no_of_boxes"

            case sizes

            case isDependent = "is_dependent"

            case attributes

            case changeRequestId = "change_request_id"

            case itemCode = "item_code"

            case slug

            case currency

            case companyId = "company_id"

            case requester

            case variants

            case productPublish = "product_publish"

            case isActive = "is_active"

            case media

            case netQuantity = "net_quantity"

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"

            case departments

            case action

            case highlights

            case categorySlug = "category_slug"

            case variantGroup = "variant_group"

            case tags

            case brandUid = "brand_uid"

            case isImageLessProduct = "is_image_less_product"

            case trader

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case productGroupTag = "product_group_tag"

            case teaserTag = "teaser_tag"

            case name

            case bulkJobId = "bulk_job_id"

            case isSet = "is_set"

            case taxIdentifier = "tax_identifier"

            case variantMedia = "variant_media"

            case uid

            case multiSize = "multi_size"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case description

            case templateTag = "template_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media2]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.noOfBoxes = noOfBoxes

            self.sizes = sizes

            self.isDependent = isDependent

            self.attributes = attributes

            self.changeRequestId = changeRequestId

            self.itemCode = itemCode

            self.slug = slug

            self.currency = currency

            self.companyId = companyId

            self.requester = requester

            self.variants = variants

            self.productPublish = productPublish

            self.isActive = isActive

            self.media = media

            self.netQuantity = netQuantity

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide

            self.departments = departments

            self.action = action

            self.highlights = highlights

            self.categorySlug = categorySlug

            self.variantGroup = variantGroup

            self.tags = tags

            self.brandUid = brandUid

            self.isImageLessProduct = isImageLessProduct

            self.trader = trader

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.productGroupTag = productGroupTag

            self.teaserTag = teaserTag

            self.name = name

            self.bulkJobId = bulkJobId

            self.isSet = isSet

            self.taxIdentifier = taxIdentifier

            self.variantMedia = variantMedia

            self.uid = uid

            self.multiSize = multiSize

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.description = description

            self.templateTag = templateTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            slug = try container.decode(String.self, forKey: .slug)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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

            do {
                media = try container.decode([Media2].self, forKey: .media)

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

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                action = try container.decode(String.self, forKey: .action)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var noOfBoxes: Int?

        public var sizes: [[String: Any]]

        public var isDependent: Bool?

        public var attributes: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var itemCode: String

        public var slug: String

        public var currency: String

        public var companyId: Int

        public var requester: String?

        public var variants: [String: Any]?

        public var productPublish: ProductPublish?

        public var isActive: Bool?

        public var media: [Media2]?

        public var netQuantity: NetQuantity?

        public var customOrder: CustomOrder?

        public var sizeGuide: String?

        public var departments: [Int]

        public var action: String?

        public var highlights: [String]?

        public var categorySlug: String

        public var variantGroup: [String: Any]?

        public var tags: [String]?

        public var brandUid: Int

        public var isImageLessProduct: Bool?

        public var trader: [Trader]

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var productGroupTag: [String]?

        public var teaserTag: TeaserTag?

        public var name: String

        public var bulkJobId: String?

        public var isSet: Bool?

        public var taxIdentifier: TaxIdentifier

        public var variantMedia: [String: Any]?

        public var uid: Int?

        public var multiSize: Bool?

        public var itemType: String

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig

        public var description: String?

        public var templateTag: String

        public enum CodingKeys: String, CodingKey {
            case noOfBoxes = "no_of_boxes"

            case sizes

            case isDependent = "is_dependent"

            case attributes

            case changeRequestId = "change_request_id"

            case itemCode = "item_code"

            case slug

            case currency

            case companyId = "company_id"

            case requester

            case variants

            case productPublish = "product_publish"

            case isActive = "is_active"

            case media

            case netQuantity = "net_quantity"

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"

            case departments

            case action

            case highlights

            case categorySlug = "category_slug"

            case variantGroup = "variant_group"

            case tags

            case brandUid = "brand_uid"

            case isImageLessProduct = "is_image_less_product"

            case trader

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case productGroupTag = "product_group_tag"

            case teaserTag = "teaser_tag"

            case name

            case bulkJobId = "bulk_job_id"

            case isSet = "is_set"

            case taxIdentifier = "tax_identifier"

            case variantMedia = "variant_media"

            case uid

            case multiSize = "multi_size"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case description

            case templateTag = "template_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media2]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.noOfBoxes = noOfBoxes

            self.sizes = sizes

            self.isDependent = isDependent

            self.attributes = attributes

            self.changeRequestId = changeRequestId

            self.itemCode = itemCode

            self.slug = slug

            self.currency = currency

            self.companyId = companyId

            self.requester = requester

            self.variants = variants

            self.productPublish = productPublish

            self.isActive = isActive

            self.media = media

            self.netQuantity = netQuantity

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide

            self.departments = departments

            self.action = action

            self.highlights = highlights

            self.categorySlug = categorySlug

            self.variantGroup = variantGroup

            self.tags = tags

            self.brandUid = brandUid

            self.isImageLessProduct = isImageLessProduct

            self.trader = trader

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.productGroupTag = productGroupTag

            self.teaserTag = teaserTag

            self.name = name

            self.bulkJobId = bulkJobId

            self.isSet = isSet

            self.taxIdentifier = taxIdentifier

            self.variantMedia = variantMedia

            self.uid = uid

            self.multiSize = multiSize

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.description = description

            self.templateTag = templateTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            slug = try container.decode(String.self, forKey: .slug)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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

            do {
                media = try container.decode([Media2].self, forKey: .media)

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

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                action = try container.decode(String.self, forKey: .action)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
        }
    }
}
