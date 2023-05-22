

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var categorySlug: String

        public var isActive: Bool?

        public var returnConfig: ReturnConfig

        public var templateTag: String

        public var variantGroup: [String: Any]?

        public var uid: Int?

        public var customOrder: CustomOrder?

        public var noOfBoxes: Int?

        public var netQuantity: NetQuantity?

        public var multiSize: Bool?

        public var departments: [Int]

        public var isImageLessProduct: Bool?

        public var currency: String

        public var teaserTag: TeaserTag?

        public var description: String?

        public var taxIdentifier: TaxIdentifier

        public var requester: String?

        public var companyId: Int

        public var customJson: [String: Any]?

        public var brandUid: Int

        public var itemCode: String

        public var action: String?

        public var highlights: [String]?

        public var isDependent: Bool?

        public var isSet: Bool?

        public var trader: [Trader]

        public var itemType: String

        public var sizes: [[String: Any]]

        public var slug: String

        public var countryOfOrigin: String

        public var tags: [String]?

        public var name: String

        public var shortDescription: String?

        public var sizeGuide: String?

        public var variants: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var media: [Media1]?

        public var productPublish: ProductPublish?

        public var attributes: [String: Any]?

        public var bulkJobId: String?

        public var variantMedia: [String: Any]?

        public var productGroupTag: [String]?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case isActive = "is_active"

            case returnConfig = "return_config"

            case templateTag = "template_tag"

            case variantGroup = "variant_group"

            case uid

            case customOrder = "custom_order"

            case noOfBoxes = "no_of_boxes"

            case netQuantity = "net_quantity"

            case multiSize = "multi_size"

            case departments

            case isImageLessProduct = "is_image_less_product"

            case currency

            case teaserTag = "teaser_tag"

            case description

            case taxIdentifier = "tax_identifier"

            case requester

            case companyId = "company_id"

            case customJson = "_custom_json"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case action

            case highlights

            case isDependent = "is_dependent"

            case isSet = "is_set"

            case trader

            case itemType = "item_type"

            case sizes

            case slug

            case countryOfOrigin = "country_of_origin"

            case tags

            case name

            case shortDescription = "short_description"

            case sizeGuide = "size_guide"

            case variants

            case changeRequestId = "change_request_id"

            case media

            case productPublish = "product_publish"

            case attributes

            case bulkJobId = "bulk_job_id"

            case variantMedia = "variant_media"

            case productGroupTag = "product_group_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.templateTag = templateTag

            self.variantGroup = variantGroup

            self.uid = uid

            self.customOrder = customOrder

            self.noOfBoxes = noOfBoxes

            self.netQuantity = netQuantity

            self.multiSize = multiSize

            self.departments = departments

            self.isImageLessProduct = isImageLessProduct

            self.currency = currency

            self.teaserTag = teaserTag

            self.description = description

            self.taxIdentifier = taxIdentifier

            self.requester = requester

            self.companyId = companyId

            self.customJson = customJson

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.action = action

            self.highlights = highlights

            self.isDependent = isDependent

            self.isSet = isSet

            self.trader = trader

            self.itemType = itemType

            self.sizes = sizes

            self.slug = slug

            self.countryOfOrigin = countryOfOrigin

            self.tags = tags

            self.name = name

            self.shortDescription = shortDescription

            self.sizeGuide = sizeGuide

            self.variants = variants

            self.changeRequestId = changeRequestId

            self.media = media

            self.productPublish = productPublish

            self.attributes = attributes

            self.bulkJobId = bulkJobId

            self.variantMedia = variantMedia

            self.productGroupTag = productGroupTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemCode = try container.decode(String.self, forKey: .itemCode)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            itemType = try container.decode(String.self, forKey: .itemType)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            slug = try container.decode(String.self, forKey: .slug)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                media = try container.decode([Media1].self, forKey: .media)

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

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

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
        public var categorySlug: String

        public var isActive: Bool?

        public var returnConfig: ReturnConfig

        public var templateTag: String

        public var variantGroup: [String: Any]?

        public var uid: Int?

        public var customOrder: CustomOrder?

        public var noOfBoxes: Int?

        public var netQuantity: NetQuantity?

        public var multiSize: Bool?

        public var departments: [Int]

        public var isImageLessProduct: Bool?

        public var currency: String

        public var teaserTag: TeaserTag?

        public var description: String?

        public var taxIdentifier: TaxIdentifier

        public var requester: String?

        public var companyId: Int

        public var customJson: [String: Any]?

        public var brandUid: Int

        public var itemCode: String

        public var action: String?

        public var highlights: [String]?

        public var isDependent: Bool?

        public var isSet: Bool?

        public var trader: [Trader]

        public var itemType: String

        public var sizes: [[String: Any]]

        public var slug: String

        public var countryOfOrigin: String

        public var tags: [String]?

        public var name: String

        public var shortDescription: String?

        public var sizeGuide: String?

        public var variants: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var media: [Media1]?

        public var productPublish: ProductPublish?

        public var attributes: [String: Any]?

        public var bulkJobId: String?

        public var variantMedia: [String: Any]?

        public var productGroupTag: [String]?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case isActive = "is_active"

            case returnConfig = "return_config"

            case templateTag = "template_tag"

            case variantGroup = "variant_group"

            case uid

            case customOrder = "custom_order"

            case noOfBoxes = "no_of_boxes"

            case netQuantity = "net_quantity"

            case multiSize = "multi_size"

            case departments

            case isImageLessProduct = "is_image_less_product"

            case currency

            case teaserTag = "teaser_tag"

            case description

            case taxIdentifier = "tax_identifier"

            case requester

            case companyId = "company_id"

            case customJson = "_custom_json"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case action

            case highlights

            case isDependent = "is_dependent"

            case isSet = "is_set"

            case trader

            case itemType = "item_type"

            case sizes

            case slug

            case countryOfOrigin = "country_of_origin"

            case tags

            case name

            case shortDescription = "short_description"

            case sizeGuide = "size_guide"

            case variants

            case changeRequestId = "change_request_id"

            case media

            case productPublish = "product_publish"

            case attributes

            case bulkJobId = "bulk_job_id"

            case variantMedia = "variant_media"

            case productGroupTag = "product_group_tag"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.templateTag = templateTag

            self.variantGroup = variantGroup

            self.uid = uid

            self.customOrder = customOrder

            self.noOfBoxes = noOfBoxes

            self.netQuantity = netQuantity

            self.multiSize = multiSize

            self.departments = departments

            self.isImageLessProduct = isImageLessProduct

            self.currency = currency

            self.teaserTag = teaserTag

            self.description = description

            self.taxIdentifier = taxIdentifier

            self.requester = requester

            self.companyId = companyId

            self.customJson = customJson

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.action = action

            self.highlights = highlights

            self.isDependent = isDependent

            self.isSet = isSet

            self.trader = trader

            self.itemType = itemType

            self.sizes = sizes

            self.slug = slug

            self.countryOfOrigin = countryOfOrigin

            self.tags = tags

            self.name = name

            self.shortDescription = shortDescription

            self.sizeGuide = sizeGuide

            self.variants = variants

            self.changeRequestId = changeRequestId

            self.media = media

            self.productPublish = productPublish

            self.attributes = attributes

            self.bulkJobId = bulkJobId

            self.variantMedia = variantMedia

            self.productGroupTag = productGroupTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemCode = try container.decode(String.self, forKey: .itemCode)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            itemType = try container.decode(String.self, forKey: .itemType)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            slug = try container.decode(String.self, forKey: .slug)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                media = try container.decode([Media1].self, forKey: .media)

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

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
        }
    }
}
