

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var companyId: Int

        public var noOfBoxes: Int?

        public var tags: [String]?

        public var name: String

        public var variants: [String: Any]?

        public var brandUid: Int

        public var changeRequestId: [String: Any]?

        public var itemCode: String

        public var isDependent: Bool?

        public var description: String?

        public var action: String?

        public var productPublish: ProductPublish1?

        public var currency: String

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var isSet: Bool?

        public var highlights: [String]?

        public var trader: [Trader]

        public var templateTag: String

        public var taxIdentifier: TaxIdentifier

        public var variantGroup: [String: Any]?

        public var media: [Media2]?

        public var requester: String?

        public var multiSize: Bool?

        public var itemType: String

        public var slug: String

        public var isActive: Bool?

        public var bulkJobId: String?

        public var uid: Int?

        public var attributes: [String: Any]?

        public var variantMedia: [String: Any]?

        public var departments: [Int]

        public var customOrder: CustomOrder?

        public var sizeGuide: String?

        public var categorySlug: String

        public var returnConfig: ReturnConfig

        public var sizes: [[String: Any]]

        public var teaserTag: TeaserTag?

        public var productGroupTag: [String]?

        public var netQuantity: NetQuantity?

        public var countryOfOrigin: String

        public var isImageLessProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case noOfBoxes = "no_of_boxes"

            case tags

            case name

            case variants

            case brandUid = "brand_uid"

            case changeRequestId = "change_request_id"

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case description

            case action

            case productPublish = "product_publish"

            case currency

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case isSet = "is_set"

            case highlights

            case trader

            case templateTag = "template_tag"

            case taxIdentifier = "tax_identifier"

            case variantGroup = "variant_group"

            case media

            case requester

            case multiSize = "multi_size"

            case itemType = "item_type"

            case slug

            case isActive = "is_active"

            case bulkJobId = "bulk_job_id"

            case uid

            case attributes

            case variantMedia = "variant_media"

            case departments

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"

            case categorySlug = "category_slug"

            case returnConfig = "return_config"

            case sizes

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case netQuantity = "net_quantity"

            case countryOfOrigin = "country_of_origin"

            case isImageLessProduct = "is_image_less_product"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media2]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.companyId = companyId

            self.noOfBoxes = noOfBoxes

            self.tags = tags

            self.name = name

            self.variants = variants

            self.brandUid = brandUid

            self.changeRequestId = changeRequestId

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.description = description

            self.action = action

            self.productPublish = productPublish

            self.currency = currency

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.isSet = isSet

            self.highlights = highlights

            self.trader = trader

            self.templateTag = templateTag

            self.taxIdentifier = taxIdentifier

            self.variantGroup = variantGroup

            self.media = media

            self.requester = requester

            self.multiSize = multiSize

            self.itemType = itemType

            self.slug = slug

            self.isActive = isActive

            self.bulkJobId = bulkJobId

            self.uid = uid

            self.attributes = attributes

            self.variantMedia = variantMedia

            self.departments = departments

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide

            self.categorySlug = categorySlug

            self.returnConfig = returnConfig

            self.sizes = sizes

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.netQuantity = netQuantity

            self.countryOfOrigin = countryOfOrigin

            self.isImageLessProduct = isImageLessProduct
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

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
                action = try container.decode(String.self, forKey: .action)

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

            currency = try container.decode(String.self, forKey: .currency)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                requester = try container.decode(String.self, forKey: .requester)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var companyId: Int

        public var noOfBoxes: Int?

        public var tags: [String]?

        public var name: String

        public var variants: [String: Any]?

        public var brandUid: Int

        public var changeRequestId: [String: Any]?

        public var itemCode: String

        public var isDependent: Bool?

        public var description: String?

        public var action: String?

        public var productPublish: ProductPublish1?

        public var currency: String

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var isSet: Bool?

        public var highlights: [String]?

        public var trader: [Trader]

        public var templateTag: String

        public var taxIdentifier: TaxIdentifier

        public var variantGroup: [String: Any]?

        public var media: [Media2]?

        public var requester: String?

        public var multiSize: Bool?

        public var itemType: String

        public var slug: String

        public var isActive: Bool?

        public var bulkJobId: String?

        public var uid: Int?

        public var attributes: [String: Any]?

        public var variantMedia: [String: Any]?

        public var departments: [Int]

        public var customOrder: CustomOrder?

        public var sizeGuide: String?

        public var categorySlug: String

        public var returnConfig: ReturnConfig

        public var sizes: [[String: Any]]

        public var teaserTag: TeaserTag?

        public var productGroupTag: [String]?

        public var netQuantity: NetQuantity?

        public var countryOfOrigin: String

        public var isImageLessProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case noOfBoxes = "no_of_boxes"

            case tags

            case name

            case variants

            case brandUid = "brand_uid"

            case changeRequestId = "change_request_id"

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case description

            case action

            case productPublish = "product_publish"

            case currency

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case isSet = "is_set"

            case highlights

            case trader

            case templateTag = "template_tag"

            case taxIdentifier = "tax_identifier"

            case variantGroup = "variant_group"

            case media

            case requester

            case multiSize = "multi_size"

            case itemType = "item_type"

            case slug

            case isActive = "is_active"

            case bulkJobId = "bulk_job_id"

            case uid

            case attributes

            case variantMedia = "variant_media"

            case departments

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"

            case categorySlug = "category_slug"

            case returnConfig = "return_config"

            case sizes

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case netQuantity = "net_quantity"

            case countryOfOrigin = "country_of_origin"

            case isImageLessProduct = "is_image_less_product"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media2]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.companyId = companyId

            self.noOfBoxes = noOfBoxes

            self.tags = tags

            self.name = name

            self.variants = variants

            self.brandUid = brandUid

            self.changeRequestId = changeRequestId

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.description = description

            self.action = action

            self.productPublish = productPublish

            self.currency = currency

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.isSet = isSet

            self.highlights = highlights

            self.trader = trader

            self.templateTag = templateTag

            self.taxIdentifier = taxIdentifier

            self.variantGroup = variantGroup

            self.media = media

            self.requester = requester

            self.multiSize = multiSize

            self.itemType = itemType

            self.slug = slug

            self.isActive = isActive

            self.bulkJobId = bulkJobId

            self.uid = uid

            self.attributes = attributes

            self.variantMedia = variantMedia

            self.departments = departments

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide

            self.categorySlug = categorySlug

            self.returnConfig = returnConfig

            self.sizes = sizes

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.netQuantity = netQuantity

            self.countryOfOrigin = countryOfOrigin

            self.isImageLessProduct = isImageLessProduct
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

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
                action = try container.decode(String.self, forKey: .action)

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

            currency = try container.decode(String.self, forKey: .currency)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                requester = try container.decode(String.self, forKey: .requester)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
        }
    }
}
