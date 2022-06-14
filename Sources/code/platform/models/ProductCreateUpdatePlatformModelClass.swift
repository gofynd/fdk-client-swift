

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var isDependent: Bool?

        public var categorySlug: String

        public var changeRequestId: String?

        public var moq: OrderQuantity?

        public var noOfBoxes: Int?

        public var customOrder: CustomOrder?

        public var isActive: Bool?

        public var description: String?

        public var multiSize: Bool?

        public var teaserTag: TeaserTag?

        public var isImageLessProduct: Bool?

        public var media: [Media1]?

        public var companyId: Int

        public var taxIdentifier: TaxIdentifier

        public var productGroupTag: [String]?

        public var returnConfig: ReturnConfig

        public var productPublish: ProductPublish?

        public var tags: [String]?

        public var isSet: Bool?

        public var bulkJobId: String?

        public var action: String?

        public var templateTag: String

        public var uid: Int?

        public var variants: [String: Any]?

        public var brandUid: Int

        public var departments: [Int]

        public var slug: String

        public var shortDescription: String?

        public var countryOfOrigin: String

        public var sizeGuide: String?

        public var requester: String?

        public var itemCode: String

        public var customJson: [String: Any]?

        public var itemType: String

        public var highlights: [String]?

        public var currency: String

        public var name: String

        public var trader: [Trader]

        public enum CodingKeys: String, CodingKey {
            case isDependent = "is_dependent"

            case categorySlug = "category_slug"

            case changeRequestId = "change_request_id"

            case moq

            case noOfBoxes = "no_of_boxes"

            case customOrder = "custom_order"

            case isActive = "is_active"

            case description

            case multiSize = "multi_size"

            case teaserTag = "teaser_tag"

            case isImageLessProduct = "is_image_less_product"

            case media

            case companyId = "company_id"

            case taxIdentifier = "tax_identifier"

            case productGroupTag = "product_group_tag"

            case returnConfig = "return_config"

            case productPublish = "product_publish"

            case tags

            case isSet = "is_set"

            case bulkJobId = "bulk_job_id"

            case action

            case templateTag = "template_tag"

            case uid

            case variants

            case brandUid = "brand_uid"

            case departments

            case slug

            case shortDescription = "short_description"

            case countryOfOrigin = "country_of_origin"

            case sizeGuide = "size_guide"

            case requester

            case itemCode = "item_code"

            case customJson = "_custom_json"

            case itemType = "item_type"

            case highlights

            case currency

            case name

            case trader
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.isDependent = isDependent

            self.categorySlug = categorySlug

            self.changeRequestId = changeRequestId

            self.moq = moq

            self.noOfBoxes = noOfBoxes

            self.customOrder = customOrder

            self.isActive = isActive

            self.description = description

            self.multiSize = multiSize

            self.teaserTag = teaserTag

            self.isImageLessProduct = isImageLessProduct

            self.media = media

            self.companyId = companyId

            self.taxIdentifier = taxIdentifier

            self.productGroupTag = productGroupTag

            self.returnConfig = returnConfig

            self.productPublish = productPublish

            self.tags = tags

            self.isSet = isSet

            self.bulkJobId = bulkJobId

            self.action = action

            self.templateTag = templateTag

            self.uid = uid

            self.variants = variants

            self.brandUid = brandUid

            self.departments = departments

            self.slug = slug

            self.shortDescription = shortDescription

            self.countryOfOrigin = countryOfOrigin

            self.sizeGuide = sizeGuide

            self.requester = requester

            self.itemCode = itemCode

            self.customJson = customJson

            self.itemType = itemType

            self.highlights = highlights

            self.currency = currency

            self.name = name

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            departments = try container.decode([Int].self, forKey: .departments)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            name = try container.decode(String.self, forKey: .name)

            trader = try container.decode([Trader].self, forKey: .trader)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(trader, forKey: .trader)
        }
    }
}
