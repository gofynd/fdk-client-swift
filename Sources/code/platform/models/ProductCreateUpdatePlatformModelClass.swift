

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var itemCode: String

        public var isActive: Bool?

        public var variants: [String: Any]?

        public var customJson: [String: Any]?

        public var changeRequestId: String?

        public var shortDescription: String?

        public var isImageLessProduct: Bool?

        public var productPublish: ProductPublish?

        public var description: String?

        public var currency: String

        public var itemType: String

        public var slug: String

        public var name: String

        public var requester: String?

        public var multiSize: Bool?

        public var brandUid: Int

        public var isSet: Bool?

        public var companyId: Int

        public var moq: OrderQuantity?

        public var productGroupTag: [String]?

        public var customOrder: CustomOrder?

        public var uid: Int?

        public var bulkJobId: String?

        public var hsnCode: String

        public var returnConfig: ReturnConfig

        public var trader: [Trader]

        public var action: String?

        public var templateTag: String

        public var departments: [Int]

        public var sizeGuide: String?

        public var noOfBoxes: Int?

        public var media: [Media1]?

        public var categorySlug: String

        public var countryOfOrigin: String

        public var tags: [String]?

        public var isDependent: Bool?

        public var highlights: [String]?

        public var teaserTag: TeaserTag?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case isActive = "is_active"

            case variants

            case customJson = "_custom_json"

            case changeRequestId = "change_request_id"

            case shortDescription = "short_description"

            case isImageLessProduct = "is_image_less_product"

            case productPublish = "product_publish"

            case description

            case currency

            case itemType = "item_type"

            case slug

            case name

            case requester

            case multiSize = "multi_size"

            case brandUid = "brand_uid"

            case isSet = "is_set"

            case companyId = "company_id"

            case moq

            case productGroupTag = "product_group_tag"

            case customOrder = "custom_order"

            case uid

            case bulkJobId = "bulk_job_id"

            case hsnCode = "hsn_code"

            case returnConfig = "return_config"

            case trader

            case action

            case templateTag = "template_tag"

            case departments

            case sizeGuide = "size_guide"

            case noOfBoxes = "no_of_boxes"

            case media

            case categorySlug = "category_slug"

            case countryOfOrigin = "country_of_origin"

            case tags

            case isDependent = "is_dependent"

            case highlights

            case teaserTag = "teaser_tag"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, hsnCode: String, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.itemCode = itemCode

            self.isActive = isActive

            self.variants = variants

            self.customJson = customJson

            self.changeRequestId = changeRequestId

            self.shortDescription = shortDescription

            self.isImageLessProduct = isImageLessProduct

            self.productPublish = productPublish

            self.description = description

            self.currency = currency

            self.itemType = itemType

            self.slug = slug

            self.name = name

            self.requester = requester

            self.multiSize = multiSize

            self.brandUid = brandUid

            self.isSet = isSet

            self.companyId = companyId

            self.moq = moq

            self.productGroupTag = productGroupTag

            self.customOrder = customOrder

            self.uid = uid

            self.bulkJobId = bulkJobId

            self.hsnCode = hsnCode

            self.returnConfig = returnConfig

            self.trader = trader

            self.action = action

            self.templateTag = templateTag

            self.departments = departments

            self.sizeGuide = sizeGuide

            self.noOfBoxes = noOfBoxes

            self.media = media

            self.categorySlug = categorySlug

            self.countryOfOrigin = countryOfOrigin

            self.tags = tags

            self.isDependent = isDependent

            self.highlights = highlights

            self.teaserTag = teaserTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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

            currency = try container.decode(String.self, forKey: .currency)

            itemType = try container.decode(String.self, forKey: .itemType)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        }
    }
}
