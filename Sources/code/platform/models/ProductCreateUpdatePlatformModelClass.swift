

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var tags: [String]?

        public var bulkJobId: String?

        public var name: String

        public var noOfBoxes: Int?

        public var productPublish: ProductPublish?

        public var media: [Media1]?

        public var variants: [String: Any]?

        public var teaserTag: TeaserTag?

        public var isImageLessProduct: Bool?

        public var uid: Int?

        public var brandUid: Int

        public var description: String?

        public var multiSize: Bool?

        public var isActive: Bool?

        public var itemType: String

        public var returnConfig: ReturnConfig

        public var highlights: [String]?

        public var isDependent: Bool?

        public var countryOfOrigin: String

        public var trader: [Trader]

        public var moq: OrderQuantity?

        public var productGroupTag: [String]?

        public var customJson: [String: Any]?

        public var slug: String

        public var currency: String

        public var companyId: Int

        public var requester: String?

        public var categorySlug: String

        public var itemCode: [String: Any]

        public var shortDescription: String?

        public var taxIdentifier: TaxIdentifier

        public var sizeGuide: String?

        public var departments: [Int]

        public var templateTag: String

        public var action: String?

        public var isSet: Bool?

        public var changeRequestId: [String: Any]?

        public var customOrder: CustomOrder?

        public enum CodingKeys: String, CodingKey {
            case tags

            case bulkJobId = "bulk_job_id"

            case name

            case noOfBoxes = "no_of_boxes"

            case productPublish = "product_publish"

            case media

            case variants

            case teaserTag = "teaser_tag"

            case isImageLessProduct = "is_image_less_product"

            case uid

            case brandUid = "brand_uid"

            case description

            case multiSize = "multi_size"

            case isActive = "is_active"

            case itemType = "item_type"

            case returnConfig = "return_config"

            case highlights

            case isDependent = "is_dependent"

            case countryOfOrigin = "country_of_origin"

            case trader

            case moq

            case productGroupTag = "product_group_tag"

            case customJson = "_custom_json"

            case slug

            case currency

            case companyId = "company_id"

            case requester

            case categorySlug = "category_slug"

            case itemCode = "item_code"

            case shortDescription = "short_description"

            case taxIdentifier = "tax_identifier"

            case sizeGuide = "size_guide"

            case departments

            case templateTag = "template_tag"

            case action

            case isSet = "is_set"

            case changeRequestId = "change_request_id"

            case customOrder = "custom_order"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.tags = tags

            self.bulkJobId = bulkJobId

            self.name = name

            self.noOfBoxes = noOfBoxes

            self.productPublish = productPublish

            self.media = media

            self.variants = variants

            self.teaserTag = teaserTag

            self.isImageLessProduct = isImageLessProduct

            self.uid = uid

            self.brandUid = brandUid

            self.description = description

            self.multiSize = multiSize

            self.isActive = isActive

            self.itemType = itemType

            self.returnConfig = returnConfig

            self.highlights = highlights

            self.isDependent = isDependent

            self.countryOfOrigin = countryOfOrigin

            self.trader = trader

            self.moq = moq

            self.productGroupTag = productGroupTag

            self.customJson = customJson

            self.slug = slug

            self.currency = currency

            self.companyId = companyId

            self.requester = requester

            self.categorySlug = categorySlug

            self.itemCode = itemCode

            self.shortDescription = shortDescription

            self.taxIdentifier = taxIdentifier

            self.sizeGuide = sizeGuide

            self.departments = departments

            self.templateTag = templateTag

            self.action = action

            self.isSet = isSet

            self.changeRequestId = changeRequestId

            self.customOrder = customOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                media = try container.decode([Media1].self, forKey: .media)

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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            templateTag = try container.decode(String.self, forKey: .templateTag)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
        }
    }
}
