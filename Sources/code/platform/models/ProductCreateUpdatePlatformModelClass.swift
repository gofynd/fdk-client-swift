

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var itemType: String

        public var taxIdentifier: TaxIdentifier

        public var highlights: [String]?

        public var action: String?

        public var variants: [String: Any]?

        public var shortDescription: String?

        public var slug: String

        public var noOfBoxes: Int?

        public var changeRequestId: [String: Any]?

        public var isImageLessProduct: Bool?

        public var requester: String?

        public var itemCode: String

        public var customOrder: CustomOrder?

        public var templateTag: String

        public var brandUid: Int

        public var description: String?

        public var uid: Int?

        public var trader: [Trader]

        public var isActive: Bool?

        public var returnConfig: ReturnConfig

        public var productGroupTag: [String]?

        public var tags: [String]?

        public var currency: String

        public var teaserTag: TeaserTag?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var departments: [Int]

        public var name: String

        public var sizeGuide: String?

        public var moq: OrderQuantity?

        public var productPublish: ProductPublish?

        public var isDependent: Bool?

        public var customJson: [String: Any]?

        public var companyId: Int

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var categorySlug: String

        public var multiSize: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case taxIdentifier = "tax_identifier"

            case highlights

            case action

            case variants

            case shortDescription = "short_description"

            case slug

            case noOfBoxes = "no_of_boxes"

            case changeRequestId = "change_request_id"

            case isImageLessProduct = "is_image_less_product"

            case requester

            case itemCode = "item_code"

            case customOrder = "custom_order"

            case templateTag = "template_tag"

            case brandUid = "brand_uid"

            case description

            case uid

            case trader

            case isActive = "is_active"

            case returnConfig = "return_config"

            case productGroupTag = "product_group_tag"

            case tags

            case currency

            case teaserTag = "teaser_tag"

            case bulkJobId = "bulk_job_id"

            case media

            case departments

            case name

            case sizeGuide = "size_guide"

            case moq

            case productPublish = "product_publish"

            case isDependent = "is_dependent"

            case customJson = "_custom_json"

            case companyId = "company_id"

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case categorySlug = "category_slug"

            case multiSize = "multi_size"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.itemType = itemType

            self.taxIdentifier = taxIdentifier

            self.highlights = highlights

            self.action = action

            self.variants = variants

            self.shortDescription = shortDescription

            self.slug = slug

            self.noOfBoxes = noOfBoxes

            self.changeRequestId = changeRequestId

            self.isImageLessProduct = isImageLessProduct

            self.requester = requester

            self.itemCode = itemCode

            self.customOrder = customOrder

            self.templateTag = templateTag

            self.brandUid = brandUid

            self.description = description

            self.uid = uid

            self.trader = trader

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.productGroupTag = productGroupTag

            self.tags = tags

            self.currency = currency

            self.teaserTag = teaserTag

            self.bulkJobId = bulkJobId

            self.media = media

            self.departments = departments

            self.name = name

            self.sizeGuide = sizeGuide

            self.moq = moq

            self.productPublish = productPublish

            self.isDependent = isDependent

            self.customJson = customJson

            self.companyId = companyId

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.categorySlug = categorySlug

            self.multiSize = multiSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemType = try container.decode(String.self, forKey: .itemType)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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

            slug = try container.decode(String.self, forKey: .slug)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            departments = try container.decode([Int].self, forKey: .departments)

            name = try container.decode(String.self, forKey: .name)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
        }
    }
}
