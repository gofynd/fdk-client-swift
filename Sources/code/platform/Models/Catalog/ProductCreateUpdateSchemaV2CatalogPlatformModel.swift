

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var trader: [Trader]

        public var tags: [String]?

        public var changeRequestId: [String: Any]?

        public var isDependent: Bool?

        public var brandUid: Int

        public var categorySlug: String

        public var description: String?

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public var itemCode: String

        public var multiSize: Bool?

        public var action: String?

        public var currency: String

        public var bulkJobId: String?

        public var netQuantity: NetQuantity?

        public var media: [Media]?

        public var shortDescription: String?

        public var variantMedia: [String: Any]?

        public var isActive: Bool?

        public var customOrder: CustomOrder?

        public var companyId: Int

        public var isSet: Bool?

        public var isImageLessProduct: Bool?

        public var name: String

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish?

        public var requester: String?

        public var slug: String

        public var templateTag: String

        public var noOfBoxes: Int?

        public var sizes: [[String: Any]]

        public var departments: [Int]

        public var sizeGuide: String?

        public var uid: Int?

        public var customJson: [String: Any]?

        public var countryOfOrigin: String

        public var highlights: [String]?

        public var returnConfig: ReturnConfig

        public var variantGroup: [String: Any]?

        public var productGroupTag: [String]?

        public var variants: [String: Any]?

        public var attributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trader

            case tags

            case changeRequestId = "change_request_id"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case categorySlug = "category_slug"

            case description

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"

            case itemCode = "item_code"

            case multiSize = "multi_size"

            case action

            case currency

            case bulkJobId = "bulk_job_id"

            case netQuantity = "net_quantity"

            case media

            case shortDescription = "short_description"

            case variantMedia = "variant_media"

            case isActive = "is_active"

            case customOrder = "custom_order"

            case companyId = "company_id"

            case isSet = "is_set"

            case isImageLessProduct = "is_image_less_product"

            case name

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case requester

            case slug

            case templateTag = "template_tag"

            case noOfBoxes = "no_of_boxes"

            case sizes

            case departments

            case sizeGuide = "size_guide"

            case uid

            case customJson = "_custom_json"

            case countryOfOrigin = "country_of_origin"

            case highlights

            case returnConfig = "return_config"

            case variantGroup = "variant_group"

            case productGroupTag = "product_group_tag"

            case variants

            case attributes
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.tags = tags

            self.changeRequestId = changeRequestId

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.categorySlug = categorySlug

            self.description = description

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType

            self.itemCode = itemCode

            self.multiSize = multiSize

            self.action = action

            self.currency = currency

            self.bulkJobId = bulkJobId

            self.netQuantity = netQuantity

            self.media = media

            self.shortDescription = shortDescription

            self.variantMedia = variantMedia

            self.isActive = isActive

            self.customOrder = customOrder

            self.companyId = companyId

            self.isSet = isSet

            self.isImageLessProduct = isImageLessProduct

            self.name = name

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.requester = requester

            self.slug = slug

            self.templateTag = templateTag

            self.noOfBoxes = noOfBoxes

            self.sizes = sizes

            self.departments = departments

            self.sizeGuide = sizeGuide

            self.uid = uid

            self.customJson = customJson

            self.countryOfOrigin = countryOfOrigin

            self.highlights = highlights

            self.returnConfig = returnConfig

            self.variantGroup = variantGroup

            self.productGroupTag = productGroupTag

            self.variants = variants

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                media = try container.decode([Media].self, forKey: .media)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            departments = try container.decode([Int].self, forKey: .departments)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var trader: [Trader]

        public var tags: [String]?

        public var changeRequestId: [String: Any]?

        public var isDependent: Bool?

        public var brandUid: Int

        public var categorySlug: String

        public var description: String?

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public var itemCode: String

        public var multiSize: Bool?

        public var action: String?

        public var currency: String

        public var bulkJobId: String?

        public var netQuantity: NetQuantity?

        public var media: [Media]?

        public var shortDescription: String?

        public var variantMedia: [String: Any]?

        public var isActive: Bool?

        public var customOrder: CustomOrder?

        public var companyId: Int

        public var isSet: Bool?

        public var isImageLessProduct: Bool?

        public var name: String

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish?

        public var requester: String?

        public var slug: String

        public var templateTag: String

        public var noOfBoxes: Int?

        public var sizes: [[String: Any]]

        public var departments: [Int]

        public var sizeGuide: String?

        public var uid: Int?

        public var customJson: [String: Any]?

        public var countryOfOrigin: String

        public var highlights: [String]?

        public var returnConfig: ReturnConfig

        public var variantGroup: [String: Any]?

        public var productGroupTag: [String]?

        public var variants: [String: Any]?

        public var attributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trader

            case tags

            case changeRequestId = "change_request_id"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case categorySlug = "category_slug"

            case description

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"

            case itemCode = "item_code"

            case multiSize = "multi_size"

            case action

            case currency

            case bulkJobId = "bulk_job_id"

            case netQuantity = "net_quantity"

            case media

            case shortDescription = "short_description"

            case variantMedia = "variant_media"

            case isActive = "is_active"

            case customOrder = "custom_order"

            case companyId = "company_id"

            case isSet = "is_set"

            case isImageLessProduct = "is_image_less_product"

            case name

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case requester

            case slug

            case templateTag = "template_tag"

            case noOfBoxes = "no_of_boxes"

            case sizes

            case departments

            case sizeGuide = "size_guide"

            case uid

            case customJson = "_custom_json"

            case countryOfOrigin = "country_of_origin"

            case highlights

            case returnConfig = "return_config"

            case variantGroup = "variant_group"

            case productGroupTag = "product_group_tag"

            case variants

            case attributes
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.tags = tags

            self.changeRequestId = changeRequestId

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.categorySlug = categorySlug

            self.description = description

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType

            self.itemCode = itemCode

            self.multiSize = multiSize

            self.action = action

            self.currency = currency

            self.bulkJobId = bulkJobId

            self.netQuantity = netQuantity

            self.media = media

            self.shortDescription = shortDescription

            self.variantMedia = variantMedia

            self.isActive = isActive

            self.customOrder = customOrder

            self.companyId = companyId

            self.isSet = isSet

            self.isImageLessProduct = isImageLessProduct

            self.name = name

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.requester = requester

            self.slug = slug

            self.templateTag = templateTag

            self.noOfBoxes = noOfBoxes

            self.sizes = sizes

            self.departments = departments

            self.sizeGuide = sizeGuide

            self.uid = uid

            self.customJson = customJson

            self.countryOfOrigin = countryOfOrigin

            self.highlights = highlights

            self.returnConfig = returnConfig

            self.variantGroup = variantGroup

            self.productGroupTag = productGroupTag

            self.variants = variants

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                media = try container.decode([Media].self, forKey: .media)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            departments = try container.decode([Int].self, forKey: .departments)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}
