

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var slug: String

        public var departments: [Int]

        public var trader: [Trader]

        public var brandUid: Int

        public var changeRequestId: [String: Any]?

        public var returnConfig: ReturnConfig

        public var shortDescription: String?

        public var description: String?

        public var itemType: String

        public var highlights: [String]?

        public var currency: String

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish?

        public var attributes: [String: Any]?

        public var categorySlug: String

        public var multiSize: Bool?

        public var netQuantity: NetQuantity?

        public var tags: [String]?

        public var isActive: Bool?

        public var taxIdentifier: TaxIdentifier

        public var media: [Media]?

        public var isDependent: Bool?

        public var variantMedia: [String: Any]?

        public var sizes: [[String: Any]]

        public var noOfBoxes: Int?

        public var customJson: [String: Any]?

        public var countryOfOrigin: String

        public var companyId: Int

        public var name: String

        public var uid: Int?

        public var action: String?

        public var itemCode: String

        public var isSet: Bool?

        public var sizeGuide: String?

        public var requester: String?

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var bulkJobId: String?

        public var variantGroup: [String: Any]?

        public var productGroupTag: [String]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case departments

            case trader

            case brandUid = "brand_uid"

            case changeRequestId = "change_request_id"

            case returnConfig = "return_config"

            case shortDescription = "short_description"

            case description

            case itemType = "item_type"

            case highlights

            case currency

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case attributes

            case categorySlug = "category_slug"

            case multiSize = "multi_size"

            case netQuantity = "net_quantity"

            case tags

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case media

            case isDependent = "is_dependent"

            case variantMedia = "variant_media"

            case sizes

            case noOfBoxes = "no_of_boxes"

            case customJson = "_custom_json"

            case countryOfOrigin = "country_of_origin"

            case companyId = "company_id"

            case name

            case uid

            case action

            case itemCode = "item_code"

            case isSet = "is_set"

            case sizeGuide = "size_guide"

            case requester

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case variants

            case isImageLessProduct = "is_image_less_product"

            case bulkJobId = "bulk_job_id"

            case variantGroup = "variant_group"

            case productGroupTag = "product_group_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.departments = departments

            self.trader = trader

            self.brandUid = brandUid

            self.changeRequestId = changeRequestId

            self.returnConfig = returnConfig

            self.shortDescription = shortDescription

            self.description = description

            self.itemType = itemType

            self.highlights = highlights

            self.currency = currency

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.attributes = attributes

            self.categorySlug = categorySlug

            self.multiSize = multiSize

            self.netQuantity = netQuantity

            self.tags = tags

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.media = media

            self.isDependent = isDependent

            self.variantMedia = variantMedia

            self.sizes = sizes

            self.noOfBoxes = noOfBoxes

            self.customJson = customJson

            self.countryOfOrigin = countryOfOrigin

            self.companyId = companyId

            self.name = name

            self.uid = uid

            self.action = action

            self.itemCode = itemCode

            self.isSet = isSet

            self.sizeGuide = sizeGuide

            self.requester = requester

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.bulkJobId = bulkJobId

            self.variantGroup = variantGroup

            self.productGroupTag = productGroupTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                media = try container.decode([Media].self, forKey: .media)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var slug: String

        public var departments: [Int]

        public var trader: [Trader]

        public var brandUid: Int

        public var changeRequestId: [String: Any]?

        public var returnConfig: ReturnConfig

        public var shortDescription: String?

        public var description: String?

        public var itemType: String

        public var highlights: [String]?

        public var currency: String

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish?

        public var attributes: [String: Any]?

        public var categorySlug: String

        public var multiSize: Bool?

        public var netQuantity: NetQuantity?

        public var tags: [String]?

        public var isActive: Bool?

        public var taxIdentifier: TaxIdentifier

        public var media: [Media]?

        public var isDependent: Bool?

        public var variantMedia: [String: Any]?

        public var sizes: [[String: Any]]

        public var noOfBoxes: Int?

        public var customJson: [String: Any]?

        public var countryOfOrigin: String

        public var companyId: Int

        public var name: String

        public var uid: Int?

        public var action: String?

        public var itemCode: String

        public var isSet: Bool?

        public var sizeGuide: String?

        public var requester: String?

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var bulkJobId: String?

        public var variantGroup: [String: Any]?

        public var productGroupTag: [String]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case departments

            case trader

            case brandUid = "brand_uid"

            case changeRequestId = "change_request_id"

            case returnConfig = "return_config"

            case shortDescription = "short_description"

            case description

            case itemType = "item_type"

            case highlights

            case currency

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case attributes

            case categorySlug = "category_slug"

            case multiSize = "multi_size"

            case netQuantity = "net_quantity"

            case tags

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case media

            case isDependent = "is_dependent"

            case variantMedia = "variant_media"

            case sizes

            case noOfBoxes = "no_of_boxes"

            case customJson = "_custom_json"

            case countryOfOrigin = "country_of_origin"

            case companyId = "company_id"

            case name

            case uid

            case action

            case itemCode = "item_code"

            case isSet = "is_set"

            case sizeGuide = "size_guide"

            case requester

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case variants

            case isImageLessProduct = "is_image_less_product"

            case bulkJobId = "bulk_job_id"

            case variantGroup = "variant_group"

            case productGroupTag = "product_group_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.departments = departments

            self.trader = trader

            self.brandUid = brandUid

            self.changeRequestId = changeRequestId

            self.returnConfig = returnConfig

            self.shortDescription = shortDescription

            self.description = description

            self.itemType = itemType

            self.highlights = highlights

            self.currency = currency

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.attributes = attributes

            self.categorySlug = categorySlug

            self.multiSize = multiSize

            self.netQuantity = netQuantity

            self.tags = tags

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.media = media

            self.isDependent = isDependent

            self.variantMedia = variantMedia

            self.sizes = sizes

            self.noOfBoxes = noOfBoxes

            self.customJson = customJson

            self.countryOfOrigin = countryOfOrigin

            self.companyId = companyId

            self.name = name

            self.uid = uid

            self.action = action

            self.itemCode = itemCode

            self.isSet = isSet

            self.sizeGuide = sizeGuide

            self.requester = requester

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.bulkJobId = bulkJobId

            self.variantGroup = variantGroup

            self.productGroupTag = productGroupTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                media = try container.decode([Media].self, forKey: .media)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
        }
    }
}
