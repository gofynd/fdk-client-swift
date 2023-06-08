

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var sizeGuide: String?

        public var countryOfOrigin: String

        public var teaserTag: TeaserTag?

        public var customOrder: CustomOrder?

        public var multiSize: Bool?

        public var currency: String

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var variants: [String: Any]?

        public var templateTag: String

        public var productPublish: ProductPublish?

        public var name: [String: Any]

        public var requester: String?

        public var isSet: Bool?

        public var variantsGroup: [String: Any]?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var itemCode: [String: Any]

        public var slug: String

        public var departments: [Int]

        public var brandUid: Int

        public var changeRequestId: [String: Any]?

        public var itemType: String

        public var netQuantity: NetQuantity?

        public var description: String?

        public var categorySlug: String

        public var noOfBoxes: Int?

        public var trader: [Trader]

        public var highlights: [String]?

        public var variantMedia: [String: Any]?

        public var isDependent: Bool?

        public var tags: [String]?

        public var returnConfig: ReturnConfig

        public var uid: Int?

        public var action: String?

        public var isActive: Bool?

        public var companyId: Int

        public var productGroupTag: [String]?

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case sizeGuide = "size_guide"

            case countryOfOrigin = "country_of_origin"

            case teaserTag = "teaser_tag"

            case customOrder = "custom_order"

            case multiSize = "multi_size"

            case currency

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case variants

            case templateTag = "template_tag"

            case productPublish = "product_publish"

            case name

            case requester

            case isSet = "is_set"

            case variantsGroup = "variants_group"

            case bulkJobId = "bulk_job_id"

            case media

            case itemCode = "item_code"

            case slug

            case departments

            case brandUid = "brand_uid"

            case changeRequestId = "change_request_id"

            case itemType = "item_type"

            case netQuantity = "net_quantity"

            case description

            case categorySlug = "category_slug"

            case noOfBoxes = "no_of_boxes"

            case trader

            case highlights

            case variantMedia = "variant_media"

            case isDependent = "is_dependent"

            case tags

            case returnConfig = "return_config"

            case uid

            case action

            case isActive = "is_active"

            case companyId = "company_id"

            case productGroupTag = "product_group_tag"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantsGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.sizeGuide = sizeGuide

            self.countryOfOrigin = countryOfOrigin

            self.teaserTag = teaserTag

            self.customOrder = customOrder

            self.multiSize = multiSize

            self.currency = currency

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.variants = variants

            self.templateTag = templateTag

            self.productPublish = productPublish

            self.name = name

            self.requester = requester

            self.isSet = isSet

            self.variantsGroup = variantsGroup

            self.bulkJobId = bulkJobId

            self.media = media

            self.itemCode = itemCode

            self.slug = slug

            self.departments = departments

            self.brandUid = brandUid

            self.changeRequestId = changeRequestId

            self.itemType = itemType

            self.netQuantity = netQuantity

            self.description = description

            self.categorySlug = categorySlug

            self.noOfBoxes = noOfBoxes

            self.trader = trader

            self.highlights = highlights

            self.variantMedia = variantMedia

            self.isDependent = isDependent

            self.tags = tags

            self.returnConfig = returnConfig

            self.uid = uid

            self.action = action

            self.isActive = isActive

            self.companyId = companyId

            self.productGroupTag = productGroupTag

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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
                variantsGroup = try container.decode([String: Any].self, forKey: .variantsGroup)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variantsGroup, forKey: .variantsGroup)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var sizeGuide: String?

        public var countryOfOrigin: String

        public var teaserTag: TeaserTag?

        public var customOrder: CustomOrder?

        public var multiSize: Bool?

        public var currency: String

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var variants: [String: Any]?

        public var templateTag: String

        public var productPublish: ProductPublish?

        public var name: [String: Any]

        public var requester: String?

        public var isSet: Bool?

        public var variantsGroup: [String: Any]?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var itemCode: [String: Any]

        public var slug: String

        public var departments: [Int]

        public var brandUid: Int

        public var changeRequestId: [String: Any]?

        public var itemType: String

        public var netQuantity: NetQuantity?

        public var description: String?

        public var categorySlug: String

        public var noOfBoxes: Int?

        public var trader: [Trader]

        public var highlights: [String]?

        public var variantMedia: [String: Any]?

        public var isDependent: Bool?

        public var tags: [String]?

        public var returnConfig: ReturnConfig

        public var uid: Int?

        public var action: String?

        public var isActive: Bool?

        public var companyId: Int

        public var productGroupTag: [String]?

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case sizeGuide = "size_guide"

            case countryOfOrigin = "country_of_origin"

            case teaserTag = "teaser_tag"

            case customOrder = "custom_order"

            case multiSize = "multi_size"

            case currency

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case variants

            case templateTag = "template_tag"

            case productPublish = "product_publish"

            case name

            case requester

            case isSet = "is_set"

            case variantsGroup = "variants_group"

            case bulkJobId = "bulk_job_id"

            case media

            case itemCode = "item_code"

            case slug

            case departments

            case brandUid = "brand_uid"

            case changeRequestId = "change_request_id"

            case itemType = "item_type"

            case netQuantity = "net_quantity"

            case description

            case categorySlug = "category_slug"

            case noOfBoxes = "no_of_boxes"

            case trader

            case highlights

            case variantMedia = "variant_media"

            case isDependent = "is_dependent"

            case tags

            case returnConfig = "return_config"

            case uid

            case action

            case isActive = "is_active"

            case companyId = "company_id"

            case productGroupTag = "product_group_tag"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantsGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.sizeGuide = sizeGuide

            self.countryOfOrigin = countryOfOrigin

            self.teaserTag = teaserTag

            self.customOrder = customOrder

            self.multiSize = multiSize

            self.currency = currency

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.variants = variants

            self.templateTag = templateTag

            self.productPublish = productPublish

            self.name = name

            self.requester = requester

            self.isSet = isSet

            self.variantsGroup = variantsGroup

            self.bulkJobId = bulkJobId

            self.media = media

            self.itemCode = itemCode

            self.slug = slug

            self.departments = departments

            self.brandUid = brandUid

            self.changeRequestId = changeRequestId

            self.itemType = itemType

            self.netQuantity = netQuantity

            self.description = description

            self.categorySlug = categorySlug

            self.noOfBoxes = noOfBoxes

            self.trader = trader

            self.highlights = highlights

            self.variantMedia = variantMedia

            self.isDependent = isDependent

            self.tags = tags

            self.returnConfig = returnConfig

            self.uid = uid

            self.action = action

            self.isActive = isActive

            self.companyId = companyId

            self.productGroupTag = productGroupTag

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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
                variantsGroup = try container.decode([String: Any].self, forKey: .variantsGroup)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variantsGroup, forKey: .variantsGroup)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
        }
    }
}
