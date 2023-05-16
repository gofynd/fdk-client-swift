

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var categorySlug: String

        public var media: [Media1]?

        public var customOrder: CustomOrder?

        public var highlights: [String]?

        public var tags: [String]?

        public var shortDescription: String?

        public var description: String?

        public var taxIdentifier: TaxIdentifier

        public var companyId: Int

        public var isSet: Bool?

        public var isImageLessProduct: Bool?

        public var teaserTag: TeaserTag?

        public var brandUid: Int

        public var noOfBoxes: Int?

        public var netQuantity: NetQuantity?

        public var countryOfOrigin: String

        public var departments: [Int]

        public var productGroupTag: [String]?

        public var uid: Int?

        public var requester: String?

        public var attributes: [String: Any]?

        public var isDependent: Bool?

        public var variants: [String: Any]?

        public var customJson: [String: Any]?

        public var slug: String

        public var templateTag: String

        public var itemType: String

        public var trader: [Trader]

        public var variantGroup: [String: Any]?

        public var variantMedia: [String: Any]?

        public var itemCode: String

        public var currency: String

        public var multiSize: Bool?

        public var name: String

        public var isActive: Bool?

        public var sizeGuide: String?

        public var changeRequestId: [String: Any]?

        public var sizes: [[String: Any]]

        public var returnConfig: ReturnConfig

        public var bulkJobId: String?

        public var productPublish: ProductPublish1?

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case media

            case customOrder = "custom_order"

            case highlights

            case tags

            case shortDescription = "short_description"

            case description

            case taxIdentifier = "tax_identifier"

            case companyId = "company_id"

            case isSet = "is_set"

            case isImageLessProduct = "is_image_less_product"

            case teaserTag = "teaser_tag"

            case brandUid = "brand_uid"

            case noOfBoxes = "no_of_boxes"

            case netQuantity = "net_quantity"

            case countryOfOrigin = "country_of_origin"

            case departments

            case productGroupTag = "product_group_tag"

            case uid

            case requester

            case attributes

            case isDependent = "is_dependent"

            case variants

            case customJson = "_custom_json"

            case slug

            case templateTag = "template_tag"

            case itemType = "item_type"

            case trader

            case variantGroup = "variant_group"

            case variantMedia = "variant_media"

            case itemCode = "item_code"

            case currency

            case multiSize = "multi_size"

            case name

            case isActive = "is_active"

            case sizeGuide = "size_guide"

            case changeRequestId = "change_request_id"

            case sizes

            case returnConfig = "return_config"

            case bulkJobId = "bulk_job_id"

            case productPublish = "product_publish"

            case action
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.media = media

            self.customOrder = customOrder

            self.highlights = highlights

            self.tags = tags

            self.shortDescription = shortDescription

            self.description = description

            self.taxIdentifier = taxIdentifier

            self.companyId = companyId

            self.isSet = isSet

            self.isImageLessProduct = isImageLessProduct

            self.teaserTag = teaserTag

            self.brandUid = brandUid

            self.noOfBoxes = noOfBoxes

            self.netQuantity = netQuantity

            self.countryOfOrigin = countryOfOrigin

            self.departments = departments

            self.productGroupTag = productGroupTag

            self.uid = uid

            self.requester = requester

            self.attributes = attributes

            self.isDependent = isDependent

            self.variants = variants

            self.customJson = customJson

            self.slug = slug

            self.templateTag = templateTag

            self.itemType = itemType

            self.trader = trader

            self.variantGroup = variantGroup

            self.variantMedia = variantMedia

            self.itemCode = itemCode

            self.currency = currency

            self.multiSize = multiSize

            self.name = name

            self.isActive = isActive

            self.sizeGuide = sizeGuide

            self.changeRequestId = changeRequestId

            self.sizes = sizes

            self.returnConfig = returnConfig

            self.bulkJobId = bulkJobId

            self.productPublish = productPublish

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                media = try container.decode([Media1].self, forKey: .media)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

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

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            itemType = try container.decode(String.self, forKey: .itemType)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(action, forKey: .action)
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

        public var media: [Media1]?

        public var customOrder: CustomOrder?

        public var highlights: [String]?

        public var tags: [String]?

        public var shortDescription: String?

        public var description: String?

        public var taxIdentifier: TaxIdentifier

        public var companyId: Int

        public var isSet: Bool?

        public var isImageLessProduct: Bool?

        public var teaserTag: TeaserTag?

        public var brandUid: Int

        public var noOfBoxes: Int?

        public var netQuantity: NetQuantity?

        public var countryOfOrigin: String

        public var departments: [Int]

        public var productGroupTag: [String]?

        public var uid: Int?

        public var requester: String?

        public var attributes: [String: Any]?

        public var isDependent: Bool?

        public var variants: [String: Any]?

        public var customJson: [String: Any]?

        public var slug: String

        public var templateTag: String

        public var itemType: String

        public var trader: [Trader]

        public var variantGroup: [String: Any]?

        public var variantMedia: [String: Any]?

        public var itemCode: String

        public var currency: String

        public var multiSize: Bool?

        public var name: String

        public var isActive: Bool?

        public var sizeGuide: String?

        public var changeRequestId: [String: Any]?

        public var sizes: [[String: Any]]

        public var returnConfig: ReturnConfig

        public var bulkJobId: String?

        public var productPublish: ProductPublish1?

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case media

            case customOrder = "custom_order"

            case highlights

            case tags

            case shortDescription = "short_description"

            case description

            case taxIdentifier = "tax_identifier"

            case companyId = "company_id"

            case isSet = "is_set"

            case isImageLessProduct = "is_image_less_product"

            case teaserTag = "teaser_tag"

            case brandUid = "brand_uid"

            case noOfBoxes = "no_of_boxes"

            case netQuantity = "net_quantity"

            case countryOfOrigin = "country_of_origin"

            case departments

            case productGroupTag = "product_group_tag"

            case uid

            case requester

            case attributes

            case isDependent = "is_dependent"

            case variants

            case customJson = "_custom_json"

            case slug

            case templateTag = "template_tag"

            case itemType = "item_type"

            case trader

            case variantGroup = "variant_group"

            case variantMedia = "variant_media"

            case itemCode = "item_code"

            case currency

            case multiSize = "multi_size"

            case name

            case isActive = "is_active"

            case sizeGuide = "size_guide"

            case changeRequestId = "change_request_id"

            case sizes

            case returnConfig = "return_config"

            case bulkJobId = "bulk_job_id"

            case productPublish = "product_publish"

            case action
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.media = media

            self.customOrder = customOrder

            self.highlights = highlights

            self.tags = tags

            self.shortDescription = shortDescription

            self.description = description

            self.taxIdentifier = taxIdentifier

            self.companyId = companyId

            self.isSet = isSet

            self.isImageLessProduct = isImageLessProduct

            self.teaserTag = teaserTag

            self.brandUid = brandUid

            self.noOfBoxes = noOfBoxes

            self.netQuantity = netQuantity

            self.countryOfOrigin = countryOfOrigin

            self.departments = departments

            self.productGroupTag = productGroupTag

            self.uid = uid

            self.requester = requester

            self.attributes = attributes

            self.isDependent = isDependent

            self.variants = variants

            self.customJson = customJson

            self.slug = slug

            self.templateTag = templateTag

            self.itemType = itemType

            self.trader = trader

            self.variantGroup = variantGroup

            self.variantMedia = variantMedia

            self.itemCode = itemCode

            self.currency = currency

            self.multiSize = multiSize

            self.name = name

            self.isActive = isActive

            self.sizeGuide = sizeGuide

            self.changeRequestId = changeRequestId

            self.sizes = sizes

            self.returnConfig = returnConfig

            self.bulkJobId = bulkJobId

            self.productPublish = productPublish

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                media = try container.decode([Media1].self, forKey: .media)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

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

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            itemType = try container.decode(String.self, forKey: .itemType)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
