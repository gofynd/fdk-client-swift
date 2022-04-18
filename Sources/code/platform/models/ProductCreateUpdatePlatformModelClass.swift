import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var shortDescription: String?

        public var productGroupTag: [String]?

        public var moq: OrderQuantity?

        public var highlights: [String]?

        public var companyId: Int

        public var brandUid: Int

        public var departments: [Int]

        public var action: String?

        public var templateTag: String

        public var sizeGuide: String?

        public var trader: [Trader]

        public var tags: [String]?

        public var requester: String?

        public var currency: String

        public var multiSize: Bool?

        public var itemCode: String

        public var isDependent: Bool?

        public var customJson: [String: Any]?

        public var media: [Media1]?

        public var description: String?

        public var changeRequestId: String?

        public var bulkJobId: String?

        public var isActive: Bool?

        public var categorySlug: String

        public var customOrder: CustomOrder?

        public var variants: [String: Any]?

        public var productPublish: ProductPublish?

        public var name: String

        public var itemType: String

        public var isSet: Bool?

        public var teaserTag: TeaserTag?

        public var uid: Int?

        public var noOfBoxes: Int?

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig

        public var isImageLessProduct: Bool?

        public var hsnCode: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case shortDescription = "short_description"

            case productGroupTag = "product_group_tag"

            case moq

            case highlights

            case companyId = "company_id"

            case brandUid = "brand_uid"

            case departments

            case action

            case templateTag = "template_tag"

            case sizeGuide = "size_guide"

            case trader

            case tags

            case requester

            case currency

            case multiSize = "multi_size"

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case customJson = "_custom_json"

            case media

            case description

            case changeRequestId = "change_request_id"

            case bulkJobId = "bulk_job_id"

            case isActive = "is_active"

            case categorySlug = "category_slug"

            case customOrder = "custom_order"

            case variants

            case productPublish = "product_publish"

            case name

            case itemType = "item_type"

            case isSet = "is_set"

            case teaserTag = "teaser_tag"

            case uid

            case noOfBoxes = "no_of_boxes"

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case isImageLessProduct = "is_image_less_product"

            case hsnCode = "hsn_code"

            case slug
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, hsnCode: String, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.shortDescription = shortDescription

            self.productGroupTag = productGroupTag

            self.moq = moq

            self.highlights = highlights

            self.companyId = companyId

            self.brandUid = brandUid

            self.departments = departments

            self.action = action

            self.templateTag = templateTag

            self.sizeGuide = sizeGuide

            self.trader = trader

            self.tags = tags

            self.requester = requester

            self.currency = currency

            self.multiSize = multiSize

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.customJson = customJson

            self.media = media

            self.description = description

            self.changeRequestId = changeRequestId

            self.bulkJobId = bulkJobId

            self.isActive = isActive

            self.categorySlug = categorySlug

            self.customOrder = customOrder

            self.variants = variants

            self.productPublish = productPublish

            self.name = name

            self.itemType = itemType

            self.isSet = isSet

            self.teaserTag = teaserTag

            self.uid = uid

            self.noOfBoxes = noOfBoxes

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.isImageLessProduct = isImageLessProduct

            self.hsnCode = hsnCode

            self.slug = slug
        }

        public func duplicate() -> ProductCreateUpdate {
            let dict = self.dictionary!
            let copy = ProductCreateUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

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

            do {
                media = try container.decode([Media1].self, forKey: .media)

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
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            itemType = try container.decode(String.self, forKey: .itemType)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
