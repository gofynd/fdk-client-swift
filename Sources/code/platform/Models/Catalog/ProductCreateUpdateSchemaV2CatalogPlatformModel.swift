

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var currency: String

        public var trader: [Trader]

        public var brandUid: Int

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public var productGroupTag: [String]?

        public var isImageLessProduct: Bool?

        public var multiSize: Bool?

        public var media: [Media1]?

        public var variantMedia: [String: Any]?

        public var description: String?

        public var isDependent: Bool?

        public var categorySlug: String

        public var variantGroup: [String: Any]?

        public var attributes: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var teaserTag: TeaserTag?

        public var netQuantity: NetQuantity?

        public var bulkJobId: String?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var variants: [String: Any]?

        public var highlights: [String]?

        public var sizes: [[String: Any]]

        public var companyId: Int

        public var shortDescription: String?

        public var sizeGuide: String?

        public var name: String

        public var requester: String?

        public var itemCode: String

        public var uid: Int?

        public var noOfBoxes: Int?

        public var countryOfOrigin: String

        public var templateTag: String

        public var productPublish: ProductPublish?

        public var returnConfig: ReturnConfig

        public var action: String?

        public var customOrder: CustomOrder?

        public var isActive: Bool?

        public var slug: String

        public var departments: [Int]

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case currency

            case trader

            case brandUid = "brand_uid"

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"

            case productGroupTag = "product_group_tag"

            case isImageLessProduct = "is_image_less_product"

            case multiSize = "multi_size"

            case media

            case variantMedia = "variant_media"

            case description

            case isDependent = "is_dependent"

            case categorySlug = "category_slug"

            case variantGroup = "variant_group"

            case attributes

            case changeRequestId = "change_request_id"

            case teaserTag = "teaser_tag"

            case netQuantity = "net_quantity"

            case bulkJobId = "bulk_job_id"

            case customJson = "_custom_json"

            case isSet = "is_set"

            case variants

            case highlights

            case sizes

            case companyId = "company_id"

            case shortDescription = "short_description"

            case sizeGuide = "size_guide"

            case name

            case requester

            case itemCode = "item_code"

            case uid

            case noOfBoxes = "no_of_boxes"

            case countryOfOrigin = "country_of_origin"

            case templateTag = "template_tag"

            case productPublish = "product_publish"

            case returnConfig = "return_config"

            case action

            case customOrder = "custom_order"

            case isActive = "is_active"

            case slug

            case departments

            case tags
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.currency = currency

            self.trader = trader

            self.brandUid = brandUid

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType

            self.productGroupTag = productGroupTag

            self.isImageLessProduct = isImageLessProduct

            self.multiSize = multiSize

            self.media = media

            self.variantMedia = variantMedia

            self.description = description

            self.isDependent = isDependent

            self.categorySlug = categorySlug

            self.variantGroup = variantGroup

            self.attributes = attributes

            self.changeRequestId = changeRequestId

            self.teaserTag = teaserTag

            self.netQuantity = netQuantity

            self.bulkJobId = bulkJobId

            self.customJson = customJson

            self.isSet = isSet

            self.variants = variants

            self.highlights = highlights

            self.sizes = sizes

            self.companyId = companyId

            self.shortDescription = shortDescription

            self.sizeGuide = sizeGuide

            self.name = name

            self.requester = requester

            self.itemCode = itemCode

            self.uid = uid

            self.noOfBoxes = noOfBoxes

            self.countryOfOrigin = countryOfOrigin

            self.templateTag = templateTag

            self.productPublish = productPublish

            self.returnConfig = returnConfig

            self.action = action

            self.customOrder = customOrder

            self.isActive = isActive

            self.slug = slug

            self.departments = departments

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            do {
                description = try container.decode(String.self, forKey: .description)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var currency: String

        public var trader: [Trader]

        public var brandUid: Int

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public var productGroupTag: [String]?

        public var isImageLessProduct: Bool?

        public var multiSize: Bool?

        public var media: [Media1]?

        public var variantMedia: [String: Any]?

        public var description: String?

        public var isDependent: Bool?

        public var categorySlug: String

        public var variantGroup: [String: Any]?

        public var attributes: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var teaserTag: TeaserTag?

        public var netQuantity: NetQuantity?

        public var bulkJobId: String?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var variants: [String: Any]?

        public var highlights: [String]?

        public var sizes: [[String: Any]]

        public var companyId: Int

        public var shortDescription: String?

        public var sizeGuide: String?

        public var name: String

        public var requester: String?

        public var itemCode: String

        public var uid: Int?

        public var noOfBoxes: Int?

        public var countryOfOrigin: String

        public var templateTag: String

        public var productPublish: ProductPublish?

        public var returnConfig: ReturnConfig

        public var action: String?

        public var customOrder: CustomOrder?

        public var isActive: Bool?

        public var slug: String

        public var departments: [Int]

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case currency

            case trader

            case brandUid = "brand_uid"

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"

            case productGroupTag = "product_group_tag"

            case isImageLessProduct = "is_image_less_product"

            case multiSize = "multi_size"

            case media

            case variantMedia = "variant_media"

            case description

            case isDependent = "is_dependent"

            case categorySlug = "category_slug"

            case variantGroup = "variant_group"

            case attributes

            case changeRequestId = "change_request_id"

            case teaserTag = "teaser_tag"

            case netQuantity = "net_quantity"

            case bulkJobId = "bulk_job_id"

            case customJson = "_custom_json"

            case isSet = "is_set"

            case variants

            case highlights

            case sizes

            case companyId = "company_id"

            case shortDescription = "short_description"

            case sizeGuide = "size_guide"

            case name

            case requester

            case itemCode = "item_code"

            case uid

            case noOfBoxes = "no_of_boxes"

            case countryOfOrigin = "country_of_origin"

            case templateTag = "template_tag"

            case productPublish = "product_publish"

            case returnConfig = "return_config"

            case action

            case customOrder = "custom_order"

            case isActive = "is_active"

            case slug

            case departments

            case tags
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.currency = currency

            self.trader = trader

            self.brandUid = brandUid

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType

            self.productGroupTag = productGroupTag

            self.isImageLessProduct = isImageLessProduct

            self.multiSize = multiSize

            self.media = media

            self.variantMedia = variantMedia

            self.description = description

            self.isDependent = isDependent

            self.categorySlug = categorySlug

            self.variantGroup = variantGroup

            self.attributes = attributes

            self.changeRequestId = changeRequestId

            self.teaserTag = teaserTag

            self.netQuantity = netQuantity

            self.bulkJobId = bulkJobId

            self.customJson = customJson

            self.isSet = isSet

            self.variants = variants

            self.highlights = highlights

            self.sizes = sizes

            self.companyId = companyId

            self.shortDescription = shortDescription

            self.sizeGuide = sizeGuide

            self.name = name

            self.requester = requester

            self.itemCode = itemCode

            self.uid = uid

            self.noOfBoxes = noOfBoxes

            self.countryOfOrigin = countryOfOrigin

            self.templateTag = templateTag

            self.productPublish = productPublish

            self.returnConfig = returnConfig

            self.action = action

            self.customOrder = customOrder

            self.isActive = isActive

            self.slug = slug

            self.departments = departments

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            trader = try container.decode([Trader].self, forKey: .trader)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            do {
                description = try container.decode(String.self, forKey: .description)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
