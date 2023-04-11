

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var requester: String?

        public var slug: String

        public var trader: [Trader]

        public var attributes: [String: Any]?

        public var departments: [Int]

        public var returnConfig: ReturnConfig

        public var countryOfOrigin: String

        public var taxIdentifier: TaxIdentifier

        public var sizes: [[String: Any]]

        public var multiSize: Bool?

        public var variantGroup: [String: Any]?

        public var productPublish: ProductPublish?

        public var description: String?

        public var isSet: Bool?

        public var name: String

        public var tags: [String]?

        public var companyId: Int

        public var isImageLessProduct: Bool?

        public var customJson: [String: Any]?

        public var sizeGuide: String?

        public var isDependent: Bool?

        public var brandUid: Int

        public var shortDescription: String?

        public var customOrder: CustomOrder?

        public var variantMedia: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var media: [Media1]?

        public var uid: Int?

        public var currency: String

        public var categorySlug: String

        public var teaserTag: TeaserTag?

        public var productGroupTag: [String]?

        public var noOfBoxes: Int?

        public var highlights: [String]?

        public var itemType: String

        public var action: String?

        public var itemCode: String

        public var templateTag: String

        public var variants: [String: Any]?

        public var isActive: Bool?

        public var netQuantity: NetQuantity?

        public var bulkJobId: String?

        public enum CodingKeys: String, CodingKey {
            case requester

            case slug

            case trader

            case attributes

            case departments

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case taxIdentifier = "tax_identifier"

            case sizes

            case multiSize = "multi_size"

            case variantGroup = "variant_group"

            case productPublish = "product_publish"

            case description

            case isSet = "is_set"

            case name

            case tags

            case companyId = "company_id"

            case isImageLessProduct = "is_image_less_product"

            case customJson = "_custom_json"

            case sizeGuide = "size_guide"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case variantMedia = "variant_media"

            case changeRequestId = "change_request_id"

            case media

            case uid

            case currency

            case categorySlug = "category_slug"

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case noOfBoxes = "no_of_boxes"

            case highlights

            case itemType = "item_type"

            case action

            case itemCode = "item_code"

            case templateTag = "template_tag"

            case variants

            case isActive = "is_active"

            case netQuantity = "net_quantity"

            case bulkJobId = "bulk_job_id"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.requester = requester

            self.slug = slug

            self.trader = trader

            self.attributes = attributes

            self.departments = departments

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.taxIdentifier = taxIdentifier

            self.sizes = sizes

            self.multiSize = multiSize

            self.variantGroup = variantGroup

            self.productPublish = productPublish

            self.description = description

            self.isSet = isSet

            self.name = name

            self.tags = tags

            self.companyId = companyId

            self.isImageLessProduct = isImageLessProduct

            self.customJson = customJson

            self.sizeGuide = sizeGuide

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.variantMedia = variantMedia

            self.changeRequestId = changeRequestId

            self.media = media

            self.uid = uid

            self.currency = currency

            self.categorySlug = categorySlug

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.noOfBoxes = noOfBoxes

            self.highlights = highlights

            self.itemType = itemType

            self.action = action

            self.itemCode = itemCode

            self.templateTag = templateTag

            self.variants = variants

            self.isActive = isActive

            self.netQuantity = netQuantity

            self.bulkJobId = bulkJobId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encode(media, forKey: .media)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var requester: String?

        public var slug: String

        public var trader: [Trader]

        public var attributes: [String: Any]?

        public var departments: [Int]

        public var returnConfig: ReturnConfig

        public var countryOfOrigin: String

        public var taxIdentifier: TaxIdentifier

        public var sizes: [[String: Any]]

        public var multiSize: Bool?

        public var variantGroup: [String: Any]?

        public var productPublish: ProductPublish?

        public var description: String?

        public var isSet: Bool?

        public var name: String

        public var tags: [String]?

        public var companyId: Int

        public var isImageLessProduct: Bool?

        public var customJson: [String: Any]?

        public var sizeGuide: String?

        public var isDependent: Bool?

        public var brandUid: Int

        public var shortDescription: String?

        public var customOrder: CustomOrder?

        public var variantMedia: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var media: [Media1]?

        public var uid: Int?

        public var currency: String

        public var categorySlug: String

        public var teaserTag: TeaserTag?

        public var productGroupTag: [String]?

        public var noOfBoxes: Int?

        public var highlights: [String]?

        public var itemType: String

        public var action: String?

        public var itemCode: String

        public var templateTag: String

        public var variants: [String: Any]?

        public var isActive: Bool?

        public var netQuantity: NetQuantity?

        public var bulkJobId: String?

        public enum CodingKeys: String, CodingKey {
            case requester

            case slug

            case trader

            case attributes

            case departments

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case taxIdentifier = "tax_identifier"

            case sizes

            case multiSize = "multi_size"

            case variantGroup = "variant_group"

            case productPublish = "product_publish"

            case description

            case isSet = "is_set"

            case name

            case tags

            case companyId = "company_id"

            case isImageLessProduct = "is_image_less_product"

            case customJson = "_custom_json"

            case sizeGuide = "size_guide"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case variantMedia = "variant_media"

            case changeRequestId = "change_request_id"

            case media

            case uid

            case currency

            case categorySlug = "category_slug"

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case noOfBoxes = "no_of_boxes"

            case highlights

            case itemType = "item_type"

            case action

            case itemCode = "item_code"

            case templateTag = "template_tag"

            case variants

            case isActive = "is_active"

            case netQuantity = "net_quantity"

            case bulkJobId = "bulk_job_id"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.requester = requester

            self.slug = slug

            self.trader = trader

            self.attributes = attributes

            self.departments = departments

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.taxIdentifier = taxIdentifier

            self.sizes = sizes

            self.multiSize = multiSize

            self.variantGroup = variantGroup

            self.productPublish = productPublish

            self.description = description

            self.isSet = isSet

            self.name = name

            self.tags = tags

            self.companyId = companyId

            self.isImageLessProduct = isImageLessProduct

            self.customJson = customJson

            self.sizeGuide = sizeGuide

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.variantMedia = variantMedia

            self.changeRequestId = changeRequestId

            self.media = media

            self.uid = uid

            self.currency = currency

            self.categorySlug = categorySlug

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.noOfBoxes = noOfBoxes

            self.highlights = highlights

            self.itemType = itemType

            self.action = action

            self.itemCode = itemCode

            self.templateTag = templateTag

            self.variants = variants

            self.isActive = isActive

            self.netQuantity = netQuantity

            self.bulkJobId = bulkJobId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encode(media, forKey: .media)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)
        }
    }
}
