

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var description: String?

        public var name: String

        public var companyId: Int

        public var shortDescription: String?

        public var customJson: [String: Any]?

        public var requester: String?

        public var isImageLessProduct: Bool?

        public var itemCode: [String: Any]

        public var media: [Media1]?

        public var moq: OrderQuantity?

        public var departments: [Int]

        public var uid: Int?

        public var highlights: [String]?

        public var bulkJobId: String?

        public var changeRequestId: [String: Any]?

        public var itemType: String

        public var teaserTag: TeaserTag?

        public var isDependent: Bool?

        public var productPublish: ProductPublish?

        public var returnConfig: ReturnConfig

        public var noOfBoxes: Int?

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var productGroupTag: [String]?

        public var brandUid: Int

        public var variants: [String: Any]?

        public var taxIdentifier: TaxIdentifier

        public var categorySlug: String

        public var templateTag: String

        public var slug: String

        public var sizeGuide: String?

        public var customOrder: CustomOrder?

        public var tags: [String]?

        public var multiSize: Bool?

        public var isActive: Bool?

        public var trader: [Trader]

        public var currency: String

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case name

            case companyId = "company_id"

            case shortDescription = "short_description"

            case customJson = "_custom_json"

            case requester

            case isImageLessProduct = "is_image_less_product"

            case itemCode = "item_code"

            case media

            case moq

            case departments

            case uid

            case highlights

            case bulkJobId = "bulk_job_id"

            case changeRequestId = "change_request_id"

            case itemType = "item_type"

            case teaserTag = "teaser_tag"

            case isDependent = "is_dependent"

            case productPublish = "product_publish"

            case returnConfig = "return_config"

            case noOfBoxes = "no_of_boxes"

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case productGroupTag = "product_group_tag"

            case brandUid = "brand_uid"

            case variants

            case taxIdentifier = "tax_identifier"

            case categorySlug = "category_slug"

            case templateTag = "template_tag"

            case slug

            case sizeGuide = "size_guide"

            case customOrder = "custom_order"

            case tags

            case multiSize = "multi_size"

            case isActive = "is_active"

            case trader

            case currency

            case action
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.description = description

            self.name = name

            self.companyId = companyId

            self.shortDescription = shortDescription

            self.customJson = customJson

            self.requester = requester

            self.isImageLessProduct = isImageLessProduct

            self.itemCode = itemCode

            self.media = media

            self.moq = moq

            self.departments = departments

            self.uid = uid

            self.highlights = highlights

            self.bulkJobId = bulkJobId

            self.changeRequestId = changeRequestId

            self.itemType = itemType

            self.teaserTag = teaserTag

            self.isDependent = isDependent

            self.productPublish = productPublish

            self.returnConfig = returnConfig

            self.noOfBoxes = noOfBoxes

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.productGroupTag = productGroupTag

            self.brandUid = brandUid

            self.variants = variants

            self.taxIdentifier = taxIdentifier

            self.categorySlug = categorySlug

            self.templateTag = templateTag

            self.slug = slug

            self.sizeGuide = sizeGuide

            self.customOrder = customOrder

            self.tags = tags

            self.multiSize = multiSize

            self.isActive = isActive

            self.trader = trader

            self.currency = currency

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                requester = try container.decode(String.self, forKey: .requester)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                media = try container.decode([Media1].self, forKey: .media)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(uid, forKey: .uid)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
