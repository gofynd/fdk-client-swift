

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var highlights: [String]?

        public var slug: String

        public var isActive: Bool?

        public var sizeGuide: String?

        public var isDependent: Bool?

        public var description: String?

        public var requester: String?

        public var action: String?

        public var moq: OrderQuantity?

        public var noOfBoxes: Int?

        public var isImageLessProduct: Bool?

        public var tags: [String]?

        public var departments: [Int]

        public var productGroupTag: [String]?

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public var countryOfOrigin: String

        public var media: [Media1]?

        public var currency: String

        public var returnConfig: ReturnConfig

        public var itemCode: [String: Any]

        public var bulkJobId: String?

        public var shortDescription: String?

        public var changeRequestId: [String: Any]?

        public var customOrder: CustomOrder?

        public var uid: Int?

        public var categorySlug: String

        public var productPublish: ProductPublish?

        public var trader: [Trader]

        public var name: String

        public var variants: [String: Any]?

        public var multiSize: Bool?

        public var teaserTag: TeaserTag?

        public var customJson: [String: Any]?

        public var templateTag: String

        public var brandUid: Int

        public var companyId: Int

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case highlights

            case slug

            case isActive = "is_active"

            case sizeGuide = "size_guide"

            case isDependent = "is_dependent"

            case description

            case requester

            case action

            case moq

            case noOfBoxes = "no_of_boxes"

            case isImageLessProduct = "is_image_less_product"

            case tags

            case departments

            case productGroupTag = "product_group_tag"

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case media

            case currency

            case returnConfig = "return_config"

            case itemCode = "item_code"

            case bulkJobId = "bulk_job_id"

            case shortDescription = "short_description"

            case changeRequestId = "change_request_id"

            case customOrder = "custom_order"

            case uid

            case categorySlug = "category_slug"

            case productPublish = "product_publish"

            case trader

            case name

            case variants

            case multiSize = "multi_size"

            case teaserTag = "teaser_tag"

            case customJson = "_custom_json"

            case templateTag = "template_tag"

            case brandUid = "brand_uid"

            case companyId = "company_id"

            case isSet = "is_set"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.highlights = highlights

            self.slug = slug

            self.isActive = isActive

            self.sizeGuide = sizeGuide

            self.isDependent = isDependent

            self.description = description

            self.requester = requester

            self.action = action

            self.moq = moq

            self.noOfBoxes = noOfBoxes

            self.isImageLessProduct = isImageLessProduct

            self.tags = tags

            self.departments = departments

            self.productGroupTag = productGroupTag

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.media = media

            self.currency = currency

            self.returnConfig = returnConfig

            self.itemCode = itemCode

            self.bulkJobId = bulkJobId

            self.shortDescription = shortDescription

            self.changeRequestId = changeRequestId

            self.customOrder = customOrder

            self.uid = uid

            self.categorySlug = categorySlug

            self.productPublish = productPublish

            self.trader = trader

            self.name = name

            self.variants = variants

            self.multiSize = multiSize

            self.teaserTag = teaserTag

            self.customJson = customJson

            self.templateTag = templateTag

            self.brandUid = brandUid

            self.companyId = companyId

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            name = try container.decode(String.self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
