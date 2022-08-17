

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var slug: String

        public var templateTag: String

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var productPublish: ProductPublish?

        public var itemCode: String

        public var multiSize: Bool?

        public var trader: [Trader]

        public var departments: [Int]

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var action: String?

        public var name: String

        public var taxIdentifier: TaxIdentifier

        public var productGroupTag: [String]?

        public var uid: Int?

        public var noOfBoxes: Int?

        public var changeRequestId: [String: Any]?

        public var shortDescription: String?

        public var sizeGuide: String?

        public var customOrder: CustomOrder?

        public var itemType: String

        public var customJson: [String: Any]?

        public var highlights: [String]?

        public var isSet: Bool?

        public var teaserTag: TeaserTag?

        public var currency: String

        public var moq: OrderQuantity?

        public var companyId: Int

        public var description: String?

        public var isDependent: Bool?

        public var returnConfig: ReturnConfig

        public var media: [Media1]?

        public var categorySlug: String

        public var brandUid: Int

        public var tags: [String]?

        public var requester: String?

        public var bulkJobId: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case templateTag = "template_tag"

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case productPublish = "product_publish"

            case itemCode = "item_code"

            case multiSize = "multi_size"

            case trader

            case departments

            case variants

            case isImageLessProduct = "is_image_less_product"

            case action

            case name

            case taxIdentifier = "tax_identifier"

            case productGroupTag = "product_group_tag"

            case uid

            case noOfBoxes = "no_of_boxes"

            case changeRequestId = "change_request_id"

            case shortDescription = "short_description"

            case sizeGuide = "size_guide"

            case customOrder = "custom_order"

            case itemType = "item_type"

            case customJson = "_custom_json"

            case highlights

            case isSet = "is_set"

            case teaserTag = "teaser_tag"

            case currency

            case moq

            case companyId = "company_id"

            case description

            case isDependent = "is_dependent"

            case returnConfig = "return_config"

            case media

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case tags

            case requester

            case bulkJobId = "bulk_job_id"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.templateTag = templateTag

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.productPublish = productPublish

            self.itemCode = itemCode

            self.multiSize = multiSize

            self.trader = trader

            self.departments = departments

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.action = action

            self.name = name

            self.taxIdentifier = taxIdentifier

            self.productGroupTag = productGroupTag

            self.uid = uid

            self.noOfBoxes = noOfBoxes

            self.changeRequestId = changeRequestId

            self.shortDescription = shortDescription

            self.sizeGuide = sizeGuide

            self.customOrder = customOrder

            self.itemType = itemType

            self.customJson = customJson

            self.highlights = highlights

            self.isSet = isSet

            self.teaserTag = teaserTag

            self.currency = currency

            self.moq = moq

            self.companyId = companyId

            self.description = description

            self.isDependent = isDependent

            self.returnConfig = returnConfig

            self.media = media

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.tags = tags

            self.requester = requester

            self.bulkJobId = bulkJobId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)
        }
    }
}
