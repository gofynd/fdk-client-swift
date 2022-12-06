

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var changeRequestId: [String: Any]?

        public var productPublish: ProductPublish?

        public var moq: OrderQuantity?

        public var brandUid: Int

        public var uid: Int?

        public var requester: String?

        public var itemCode: [String: Any]

        public var templateTag: String

        public var media: [Media1]?

        public var trader: [Trader]

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var companyId: Int

        public var variants: [String: Any]?

        public var itemType: String

        public var teaserTag: TeaserTag?

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var bulkJobId: String?

        public var name: String

        public var highlights: [String]?

        public var isDependent: Bool?

        public var action: String?

        public var departments: [Int]

        public var categorySlug: String

        public var multiSize: Bool?

        public var productGroupTag: [String]?

        public var countryOfOrigin: String

        public var sizeGuide: String?

        public var shortDescription: String?

        public var slug: String

        public var returnConfig: ReturnConfig

        public var currency: String

        public var isActive: Bool?

        public var isSet: Bool?

        public var description: String?

        public var customOrder: CustomOrder?

        public var noOfBoxes: Int?

        public enum CodingKeys: String, CodingKey {
            case changeRequestId = "change_request_id"

            case productPublish = "product_publish"

            case moq

            case brandUid = "brand_uid"

            case uid

            case requester

            case itemCode = "item_code"

            case templateTag = "template_tag"

            case media

            case trader

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"

            case variants

            case itemType = "item_type"

            case teaserTag = "teaser_tag"

            case customJson = "_custom_json"

            case tags

            case bulkJobId = "bulk_job_id"

            case name

            case highlights

            case isDependent = "is_dependent"

            case action

            case departments

            case categorySlug = "category_slug"

            case multiSize = "multi_size"

            case productGroupTag = "product_group_tag"

            case countryOfOrigin = "country_of_origin"

            case sizeGuide = "size_guide"

            case shortDescription = "short_description"

            case slug

            case returnConfig = "return_config"

            case currency

            case isActive = "is_active"

            case isSet = "is_set"

            case description

            case customOrder = "custom_order"

            case noOfBoxes = "no_of_boxes"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.changeRequestId = changeRequestId

            self.productPublish = productPublish

            self.moq = moq

            self.brandUid = brandUid

            self.uid = uid

            self.requester = requester

            self.itemCode = itemCode

            self.templateTag = templateTag

            self.media = media

            self.trader = trader

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId

            self.variants = variants

            self.itemType = itemType

            self.teaserTag = teaserTag

            self.customJson = customJson

            self.tags = tags

            self.bulkJobId = bulkJobId

            self.name = name

            self.highlights = highlights

            self.isDependent = isDependent

            self.action = action

            self.departments = departments

            self.categorySlug = categorySlug

            self.multiSize = multiSize

            self.productGroupTag = productGroupTag

            self.countryOfOrigin = countryOfOrigin

            self.sizeGuide = sizeGuide

            self.shortDescription = shortDescription

            self.slug = slug

            self.returnConfig = returnConfig

            self.currency = currency

            self.isActive = isActive

            self.isSet = isSet

            self.description = description

            self.customOrder = customOrder

            self.noOfBoxes = noOfBoxes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            name = try container.decode(String.self, forKey: .name)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            slug = try container.decode(String.self, forKey: .slug)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            currency = try container.decode(String.self, forKey: .currency)

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
                description = try container.decode(String.self, forKey: .description)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)
        }
    }
}
