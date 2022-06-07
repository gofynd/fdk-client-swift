

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var teaserTag: TeaserTag?

        public var itemCode: String

        public var highlights: [String]?

        public var isImageLessProduct: Bool?

        public var action: String?

        public var trader: [Trader]

        public var companyId: Int

        public var itemType: String

        public var categorySlug: String

        public var customJson: [String: Any]?

        public var customOrder: CustomOrder?

        public var departments: [Int]

        public var returnConfig: ReturnConfig

        public var slug: String

        public var templateTag: String

        public var variants: [String: Any]?

        public var name: String

        public var uid: Int?

        public var productGroupTag: [String]?

        public var isSet: Bool?

        public var shortDescription: String?

        public var currency: String

        public var isActive: Bool?

        public var productPublish: ProductPublish?

        public var tags: [String]?

        public var sizeGuide: String?

        public var brandUid: Int

        public var moq: OrderQuantity?

        public var requester: String?

        public var description: String?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var noOfBoxes: Int?

        public var countryOfOrigin: String

        public var isDependent: Bool?

        public var changeRequestId: String?

        public var taxIdentifier: TaxIdentifier

        public var multiSize: Bool?

        public enum CodingKeys: String, CodingKey {
            case teaserTag = "teaser_tag"

            case itemCode = "item_code"

            case highlights

            case isImageLessProduct = "is_image_less_product"

            case action

            case trader

            case companyId = "company_id"

            case itemType = "item_type"

            case categorySlug = "category_slug"

            case customJson = "_custom_json"

            case customOrder = "custom_order"

            case departments

            case returnConfig = "return_config"

            case slug

            case templateTag = "template_tag"

            case variants

            case name

            case uid

            case productGroupTag = "product_group_tag"

            case isSet = "is_set"

            case shortDescription = "short_description"

            case currency

            case isActive = "is_active"

            case productPublish = "product_publish"

            case tags

            case sizeGuide = "size_guide"

            case brandUid = "brand_uid"

            case moq

            case requester

            case description

            case bulkJobId = "bulk_job_id"

            case media

            case noOfBoxes = "no_of_boxes"

            case countryOfOrigin = "country_of_origin"

            case isDependent = "is_dependent"

            case changeRequestId = "change_request_id"

            case taxIdentifier = "tax_identifier"

            case multiSize = "multi_size"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.teaserTag = teaserTag

            self.itemCode = itemCode

            self.highlights = highlights

            self.isImageLessProduct = isImageLessProduct

            self.action = action

            self.trader = trader

            self.companyId = companyId

            self.itemType = itemType

            self.categorySlug = categorySlug

            self.customJson = customJson

            self.customOrder = customOrder

            self.departments = departments

            self.returnConfig = returnConfig

            self.slug = slug

            self.templateTag = templateTag

            self.variants = variants

            self.name = name

            self.uid = uid

            self.productGroupTag = productGroupTag

            self.isSet = isSet

            self.shortDescription = shortDescription

            self.currency = currency

            self.isActive = isActive

            self.productPublish = productPublish

            self.tags = tags

            self.sizeGuide = sizeGuide

            self.brandUid = brandUid

            self.moq = moq

            self.requester = requester

            self.description = description

            self.bulkJobId = bulkJobId

            self.media = media

            self.noOfBoxes = noOfBoxes

            self.countryOfOrigin = countryOfOrigin

            self.isDependent = isDependent

            self.changeRequestId = changeRequestId

            self.taxIdentifier = taxIdentifier

            self.multiSize = multiSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemType = try container.decode(String.self, forKey: .itemType)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            departments = try container.decode([Int].self, forKey: .departments)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            slug = try container.decode(String.self, forKey: .slug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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
                description = try container.decode(String.self, forKey: .description)

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

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
        }
    }
}
