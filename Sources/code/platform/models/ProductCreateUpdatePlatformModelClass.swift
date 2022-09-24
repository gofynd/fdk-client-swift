

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var uid: Int?

        public var returnConfig: ReturnConfig

        public var itemType: String

        public var taxIdentifier: TaxIdentifier

        public var description: String?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var teaserTag: TeaserTag?

        public var isImageLessProduct: Bool?

        public var slug: String

        public var currency: String

        public var templateTag: String

        public var countryOfOrigin: String

        public var isDependent: Bool?

        public var sizeGuide: String?

        public var bulkJobId: String?

        public var name: String

        public var categorySlug: String

        public var requester: String?

        public var multiSize: Bool?

        public var changeRequestId: [String: Any]?

        public var companyId: Int

        public var productPublish: ProductPublish?

        public var departments: [Int]

        public var action: String?

        public var isSet: Bool?

        public var productGroupTag: [String]?

        public var tags: [String]?

        public var media: [Media1]?

        public var trader: [Trader]

        public var itemCode: [String: Any]

        public var highlights: [String]?

        public var moq: OrderQuantity?

        public var variants: [String: Any]?

        public var shortDescription: String?

        public var customOrder: CustomOrder?

        public var noOfBoxes: Int?

        public var brandUid: Int

        public enum CodingKeys: String, CodingKey {
            case uid

            case returnConfig = "return_config"

            case itemType = "item_type"

            case taxIdentifier = "tax_identifier"

            case description

            case customJson = "_custom_json"

            case isActive = "is_active"

            case teaserTag = "teaser_tag"

            case isImageLessProduct = "is_image_less_product"

            case slug

            case currency

            case templateTag = "template_tag"

            case countryOfOrigin = "country_of_origin"

            case isDependent = "is_dependent"

            case sizeGuide = "size_guide"

            case bulkJobId = "bulk_job_id"

            case name

            case categorySlug = "category_slug"

            case requester

            case multiSize = "multi_size"

            case changeRequestId = "change_request_id"

            case companyId = "company_id"

            case productPublish = "product_publish"

            case departments

            case action

            case isSet = "is_set"

            case productGroupTag = "product_group_tag"

            case tags

            case media

            case trader

            case itemCode = "item_code"

            case highlights

            case moq

            case variants

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case noOfBoxes = "no_of_boxes"

            case brandUid = "brand_uid"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.returnConfig = returnConfig

            self.itemType = itemType

            self.taxIdentifier = taxIdentifier

            self.description = description

            self.customJson = customJson

            self.isActive = isActive

            self.teaserTag = teaserTag

            self.isImageLessProduct = isImageLessProduct

            self.slug = slug

            self.currency = currency

            self.templateTag = templateTag

            self.countryOfOrigin = countryOfOrigin

            self.isDependent = isDependent

            self.sizeGuide = sizeGuide

            self.bulkJobId = bulkJobId

            self.name = name

            self.categorySlug = categorySlug

            self.requester = requester

            self.multiSize = multiSize

            self.changeRequestId = changeRequestId

            self.companyId = companyId

            self.productPublish = productPublish

            self.departments = departments

            self.action = action

            self.isSet = isSet

            self.productGroupTag = productGroupTag

            self.tags = tags

            self.media = media

            self.trader = trader

            self.itemCode = itemCode

            self.highlights = highlights

            self.moq = moq

            self.variants = variants

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.noOfBoxes = noOfBoxes

            self.brandUid = brandUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            itemType = try container.decode(String.self, forKey: .itemType)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            currency = try container.decode(String.self, forKey: .currency)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
        }
    }
}
