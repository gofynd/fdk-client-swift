

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var sizes: [[String: Any]]

        public var slug: String

        public var variants: [String: Any]?

        public var trader: [Trader]

        public var multiSize: Bool?

        public var description: String?

        public var templateTag: String

        public var noOfBoxes: Int?

        public var itemType: String

        public var sizeGuide: String?

        public var media: [Media]?

        public var customJson: [String: Any]?

        public var productPublish: ProductPublish1?

        public var variantGroup: [String: Any]?

        public var countryOfOrigin: String

        public var bulkJobId: String?

        public var productGroupTag: [String]?

        public var name: String

        public var brandUid: Int

        public var isDependent: Bool?

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var companyId: Int

        public var returnConfig: ReturnConfig

        public var categorySlug: String

        public var highlights: [String]?

        public var itemCode: String

        public var currency: String

        public var variantMedia: [String: Any]?

        public var action: String?

        public var tags: [String]?

        public var customOrder: CustomOrder?

        public var requester: String?

        public var departments: [Int]

        public var netQuantity: NetQuantity?

        public var shortDescription: String?

        public var changeRequestId: [String: Any]?

        public var teaserTag: TeaserTag?

        public var uid: Int?

        public var isActive: Bool?

        public var isSet: Bool?

        public var attributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case slug

            case variants

            case trader

            case multiSize = "multi_size"

            case description

            case templateTag = "template_tag"

            case noOfBoxes = "no_of_boxes"

            case itemType = "item_type"

            case sizeGuide = "size_guide"

            case media

            case customJson = "_custom_json"

            case productPublish = "product_publish"

            case variantGroup = "variant_group"

            case countryOfOrigin = "country_of_origin"

            case bulkJobId = "bulk_job_id"

            case productGroupTag = "product_group_tag"

            case name

            case brandUid = "brand_uid"

            case isDependent = "is_dependent"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"

            case returnConfig = "return_config"

            case categorySlug = "category_slug"

            case highlights

            case itemCode = "item_code"

            case currency

            case variantMedia = "variant_media"

            case action

            case tags

            case customOrder = "custom_order"

            case requester

            case departments

            case netQuantity = "net_quantity"

            case shortDescription = "short_description"

            case changeRequestId = "change_request_id"

            case teaserTag = "teaser_tag"

            case uid

            case isActive = "is_active"

            case isSet = "is_set"

            case attributes
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.sizes = sizes

            self.slug = slug

            self.variants = variants

            self.trader = trader

            self.multiSize = multiSize

            self.description = description

            self.templateTag = templateTag

            self.noOfBoxes = noOfBoxes

            self.itemType = itemType

            self.sizeGuide = sizeGuide

            self.media = media

            self.customJson = customJson

            self.productPublish = productPublish

            self.variantGroup = variantGroup

            self.countryOfOrigin = countryOfOrigin

            self.bulkJobId = bulkJobId

            self.productGroupTag = productGroupTag

            self.name = name

            self.brandUid = brandUid

            self.isDependent = isDependent

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId

            self.returnConfig = returnConfig

            self.categorySlug = categorySlug

            self.highlights = highlights

            self.itemCode = itemCode

            self.currency = currency

            self.variantMedia = variantMedia

            self.action = action

            self.tags = tags

            self.customOrder = customOrder

            self.requester = requester

            self.departments = departments

            self.netQuantity = netQuantity

            self.shortDescription = shortDescription

            self.changeRequestId = changeRequestId

            self.teaserTag = teaserTag

            self.uid = uid

            self.isActive = isActive

            self.isSet = isSet

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            name = try container.decode(String.self, forKey: .name)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

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
        public var sizes: [[String: Any]]

        public var slug: String

        public var variants: [String: Any]?

        public var trader: [Trader]

        public var multiSize: Bool?

        public var description: String?

        public var templateTag: String

        public var noOfBoxes: Int?

        public var itemType: String

        public var sizeGuide: String?

        public var media: [Media]?

        public var customJson: [String: Any]?

        public var productPublish: ProductPublish1?

        public var variantGroup: [String: Any]?

        public var countryOfOrigin: String

        public var bulkJobId: String?

        public var productGroupTag: [String]?

        public var name: String

        public var brandUid: Int

        public var isDependent: Bool?

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var companyId: Int

        public var returnConfig: ReturnConfig

        public var categorySlug: String

        public var highlights: [String]?

        public var itemCode: String

        public var currency: String

        public var variantMedia: [String: Any]?

        public var action: String?

        public var tags: [String]?

        public var customOrder: CustomOrder?

        public var requester: String?

        public var departments: [Int]

        public var netQuantity: NetQuantity?

        public var shortDescription: String?

        public var changeRequestId: [String: Any]?

        public var teaserTag: TeaserTag?

        public var uid: Int?

        public var isActive: Bool?

        public var isSet: Bool?

        public var attributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case slug

            case variants

            case trader

            case multiSize = "multi_size"

            case description

            case templateTag = "template_tag"

            case noOfBoxes = "no_of_boxes"

            case itemType = "item_type"

            case sizeGuide = "size_guide"

            case media

            case customJson = "_custom_json"

            case productPublish = "product_publish"

            case variantGroup = "variant_group"

            case countryOfOrigin = "country_of_origin"

            case bulkJobId = "bulk_job_id"

            case productGroupTag = "product_group_tag"

            case name

            case brandUid = "brand_uid"

            case isDependent = "is_dependent"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"

            case returnConfig = "return_config"

            case categorySlug = "category_slug"

            case highlights

            case itemCode = "item_code"

            case currency

            case variantMedia = "variant_media"

            case action

            case tags

            case customOrder = "custom_order"

            case requester

            case departments

            case netQuantity = "net_quantity"

            case shortDescription = "short_description"

            case changeRequestId = "change_request_id"

            case teaserTag = "teaser_tag"

            case uid

            case isActive = "is_active"

            case isSet = "is_set"

            case attributes
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.sizes = sizes

            self.slug = slug

            self.variants = variants

            self.trader = trader

            self.multiSize = multiSize

            self.description = description

            self.templateTag = templateTag

            self.noOfBoxes = noOfBoxes

            self.itemType = itemType

            self.sizeGuide = sizeGuide

            self.media = media

            self.customJson = customJson

            self.productPublish = productPublish

            self.variantGroup = variantGroup

            self.countryOfOrigin = countryOfOrigin

            self.bulkJobId = bulkJobId

            self.productGroupTag = productGroupTag

            self.name = name

            self.brandUid = brandUid

            self.isDependent = isDependent

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId

            self.returnConfig = returnConfig

            self.categorySlug = categorySlug

            self.highlights = highlights

            self.itemCode = itemCode

            self.currency = currency

            self.variantMedia = variantMedia

            self.action = action

            self.tags = tags

            self.customOrder = customOrder

            self.requester = requester

            self.departments = departments

            self.netQuantity = netQuantity

            self.shortDescription = shortDescription

            self.changeRequestId = changeRequestId

            self.teaserTag = teaserTag

            self.uid = uid

            self.isActive = isActive

            self.isSet = isSet

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            name = try container.decode(String.self, forKey: .name)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}
