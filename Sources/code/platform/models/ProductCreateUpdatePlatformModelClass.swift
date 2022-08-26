

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var departments: [Int]

        public var isSet: Bool?

        public var brandUid: Int

        public var teaserTag: TeaserTag?

        public var uid: Int?

        public var taxIdentifier: TaxIdentifier

        public var itemCode: String

        public var variants: [String: Any]?

        public var itemType: String

        public var tags: [String]?

        public var sizeGuide: String?

        public var currency: String

        public var action: String?

        public var highlights: [String]?

        public var customJson: [String: Any]?

        public var slug: String

        public var trader: [Trader]

        public var companyId: Int

        public var isDependent: Bool?

        public var templateTag: String

        public var countryOfOrigin: String

        public var multiSize: Bool?

        public var name: String

        public var description: String?

        public var categorySlug: String

        public var productPublish: ProductPublish?

        public var changeRequestId: [String: Any]?

        public var moq: OrderQuantity?

        public var bulkJobId: String?

        public var shortDescription: String?

        public var customOrder: CustomOrder?

        public var isActive: Bool?

        public var productGroupTag: [String]?

        public var requester: String?

        public var noOfBoxes: Int?

        public var returnConfig: ReturnConfig

        public var media: [Media1]?

        public var isImageLessProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case departments

            case isSet = "is_set"

            case brandUid = "brand_uid"

            case teaserTag = "teaser_tag"

            case uid

            case taxIdentifier = "tax_identifier"

            case itemCode = "item_code"

            case variants

            case itemType = "item_type"

            case tags

            case sizeGuide = "size_guide"

            case currency

            case action

            case highlights

            case customJson = "_custom_json"

            case slug

            case trader

            case companyId = "company_id"

            case isDependent = "is_dependent"

            case templateTag = "template_tag"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case name

            case description

            case categorySlug = "category_slug"

            case productPublish = "product_publish"

            case changeRequestId = "change_request_id"

            case moq

            case bulkJobId = "bulk_job_id"

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case isActive = "is_active"

            case productGroupTag = "product_group_tag"

            case requester

            case noOfBoxes = "no_of_boxes"

            case returnConfig = "return_config"

            case media

            case isImageLessProduct = "is_image_less_product"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.departments = departments

            self.isSet = isSet

            self.brandUid = brandUid

            self.teaserTag = teaserTag

            self.uid = uid

            self.taxIdentifier = taxIdentifier

            self.itemCode = itemCode

            self.variants = variants

            self.itemType = itemType

            self.tags = tags

            self.sizeGuide = sizeGuide

            self.currency = currency

            self.action = action

            self.highlights = highlights

            self.customJson = customJson

            self.slug = slug

            self.trader = trader

            self.companyId = companyId

            self.isDependent = isDependent

            self.templateTag = templateTag

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.name = name

            self.description = description

            self.categorySlug = categorySlug

            self.productPublish = productPublish

            self.changeRequestId = changeRequestId

            self.moq = moq

            self.bulkJobId = bulkJobId

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.isActive = isActive

            self.productGroupTag = productGroupTag

            self.requester = requester

            self.noOfBoxes = noOfBoxes

            self.returnConfig = returnConfig

            self.media = media

            self.isImageLessProduct = isImageLessProduct
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            trader = try container.decode([Trader].self, forKey: .trader)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)
        }
    }
}
