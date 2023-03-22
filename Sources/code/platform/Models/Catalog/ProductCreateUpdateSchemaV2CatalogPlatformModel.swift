

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var templateTag: String

        public var customOrder: CustomOrder?

        public var sizes: [[String: Any]]

        public var shortDescription: String?

        public var trader: [Trader]

        public var companyId: Int

        public var isImageLessProduct: Bool?

        public var attributes: [String: Any]?

        public var multiSize: Bool?

        public var action: String?

        public var itemCode: String

        public var brandUid: Int

        public var customJson: [String: Any]?

        public var name: String

        public var itemType: String

        public var productPublish: ProductPublish?

        public var tags: [String]?

        public var uid: Int?

        public var isSet: Bool?

        public var variants: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var sizeGuide: String?

        public var categorySlug: String

        public var variantMedia: [String: Any]?

        public var description: String?

        public var requester: String?

        public var noOfBoxes: Int?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var isDependent: Bool?

        public var highlights: [String]?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var netQuantity: NetQuantity?

        public var taxIdentifier: TaxIdentifier

        public var currency: String

        public var variantGroup: [String: Any]?

        public var slug: String

        public var returnConfig: ReturnConfig

        public var departments: [Int]

        public var productGroupTag: [String]?

        public var teaserTag: TeaserTag?

        public enum CodingKeys: String, CodingKey {
            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case sizes

            case shortDescription = "short_description"

            case trader

            case companyId = "company_id"

            case isImageLessProduct = "is_image_less_product"

            case attributes

            case multiSize = "multi_size"

            case action

            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case customJson = "_custom_json"

            case name

            case itemType = "item_type"

            case productPublish = "product_publish"

            case tags

            case uid

            case isSet = "is_set"

            case variants

            case changeRequestId = "change_request_id"

            case sizeGuide = "size_guide"

            case categorySlug = "category_slug"

            case variantMedia = "variant_media"

            case description

            case requester

            case noOfBoxes = "no_of_boxes"

            case bulkJobId = "bulk_job_id"

            case media

            case isDependent = "is_dependent"

            case highlights

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case netQuantity = "net_quantity"

            case taxIdentifier = "tax_identifier"

            case currency

            case variantGroup = "variant_group"

            case slug

            case returnConfig = "return_config"

            case departments

            case productGroupTag = "product_group_tag"

            case teaserTag = "teaser_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.templateTag = templateTag

            self.customOrder = customOrder

            self.sizes = sizes

            self.shortDescription = shortDescription

            self.trader = trader

            self.companyId = companyId

            self.isImageLessProduct = isImageLessProduct

            self.attributes = attributes

            self.multiSize = multiSize

            self.action = action

            self.itemCode = itemCode

            self.brandUid = brandUid

            self.customJson = customJson

            self.name = name

            self.itemType = itemType

            self.productPublish = productPublish

            self.tags = tags

            self.uid = uid

            self.isSet = isSet

            self.variants = variants

            self.changeRequestId = changeRequestId

            self.sizeGuide = sizeGuide

            self.categorySlug = categorySlug

            self.variantMedia = variantMedia

            self.description = description

            self.requester = requester

            self.noOfBoxes = noOfBoxes

            self.bulkJobId = bulkJobId

            self.media = media

            self.isDependent = isDependent

            self.highlights = highlights

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.netQuantity = netQuantity

            self.taxIdentifier = taxIdentifier

            self.currency = currency

            self.variantGroup = variantGroup

            self.slug = slug

            self.returnConfig = returnConfig

            self.departments = departments

            self.productGroupTag = productGroupTag

            self.teaserTag = teaserTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            departments = try container.decode([Int].self, forKey: .departments)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var templateTag: String

        public var customOrder: CustomOrder?

        public var sizes: [[String: Any]]

        public var shortDescription: String?

        public var trader: [Trader]

        public var companyId: Int

        public var isImageLessProduct: Bool?

        public var attributes: [String: Any]?

        public var multiSize: Bool?

        public var action: String?

        public var itemCode: String

        public var brandUid: Int

        public var customJson: [String: Any]?

        public var name: String

        public var itemType: String

        public var productPublish: ProductPublish?

        public var tags: [String]?

        public var uid: Int?

        public var isSet: Bool?

        public var variants: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var sizeGuide: String?

        public var categorySlug: String

        public var variantMedia: [String: Any]?

        public var description: String?

        public var requester: String?

        public var noOfBoxes: Int?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var isDependent: Bool?

        public var highlights: [String]?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var netQuantity: NetQuantity?

        public var taxIdentifier: TaxIdentifier

        public var currency: String

        public var variantGroup: [String: Any]?

        public var slug: String

        public var returnConfig: ReturnConfig

        public var departments: [Int]

        public var productGroupTag: [String]?

        public var teaserTag: TeaserTag?

        public enum CodingKeys: String, CodingKey {
            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case sizes

            case shortDescription = "short_description"

            case trader

            case companyId = "company_id"

            case isImageLessProduct = "is_image_less_product"

            case attributes

            case multiSize = "multi_size"

            case action

            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case customJson = "_custom_json"

            case name

            case itemType = "item_type"

            case productPublish = "product_publish"

            case tags

            case uid

            case isSet = "is_set"

            case variants

            case changeRequestId = "change_request_id"

            case sizeGuide = "size_guide"

            case categorySlug = "category_slug"

            case variantMedia = "variant_media"

            case description

            case requester

            case noOfBoxes = "no_of_boxes"

            case bulkJobId = "bulk_job_id"

            case media

            case isDependent = "is_dependent"

            case highlights

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case netQuantity = "net_quantity"

            case taxIdentifier = "tax_identifier"

            case currency

            case variantGroup = "variant_group"

            case slug

            case returnConfig = "return_config"

            case departments

            case productGroupTag = "product_group_tag"

            case teaserTag = "teaser_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.templateTag = templateTag

            self.customOrder = customOrder

            self.sizes = sizes

            self.shortDescription = shortDescription

            self.trader = trader

            self.companyId = companyId

            self.isImageLessProduct = isImageLessProduct

            self.attributes = attributes

            self.multiSize = multiSize

            self.action = action

            self.itemCode = itemCode

            self.brandUid = brandUid

            self.customJson = customJson

            self.name = name

            self.itemType = itemType

            self.productPublish = productPublish

            self.tags = tags

            self.uid = uid

            self.isSet = isSet

            self.variants = variants

            self.changeRequestId = changeRequestId

            self.sizeGuide = sizeGuide

            self.categorySlug = categorySlug

            self.variantMedia = variantMedia

            self.description = description

            self.requester = requester

            self.noOfBoxes = noOfBoxes

            self.bulkJobId = bulkJobId

            self.media = media

            self.isDependent = isDependent

            self.highlights = highlights

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.netQuantity = netQuantity

            self.taxIdentifier = taxIdentifier

            self.currency = currency

            self.variantGroup = variantGroup

            self.slug = slug

            self.returnConfig = returnConfig

            self.departments = departments

            self.productGroupTag = productGroupTag

            self.teaserTag = teaserTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            departments = try container.decode([Int].self, forKey: .departments)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        }
    }
}
