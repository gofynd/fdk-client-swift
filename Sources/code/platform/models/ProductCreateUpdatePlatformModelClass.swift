import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var isDependent: Bool?

        public var productGroupTag: [String]?

        public var currency: String

        public var name: String

        public var companyId: Int

        public var teaserTag: TeaserTag?

        public var variants: [String: Any]?

        public var slug: String

        public var itemCode: String

        public var returnConfig: ReturnConfig

        public var countryOfOrigin: String

        public var itemType: String

        public var bulkJobId: String?

        public var categorySlug: String

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var description: String?

        public var requester: String?

        public var brandUid: Int

        public var customJson: [String: Any]?

        public var shortDescription: String?

        public var highlights: [String]?

        public var tags: [String]?

        public var customOrder: CustomOrder?

        public var sizeGuide: String?

        public var departments: [Int]

        public var multiSize: Bool?

        public var action: String?

        public var hsnCode: String

        public var templateTag: String

        public var trader: [Trader]

        public var changeRequestId: String?

        public var media: [Media1]?

        public var productPublish: ProductPublish?

        public var uid: Int?

        public var isActive: Bool?

        public var isSet: Bool?

        public var moq: OrderQuantity?

        public enum CodingKeys: String, CodingKey {
            case isDependent = "is_dependent"

            case productGroupTag = "product_group_tag"

            case currency

            case name

            case companyId = "company_id"

            case teaserTag = "teaser_tag"

            case variants

            case slug

            case itemCode = "item_code"

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case itemType = "item_type"

            case bulkJobId = "bulk_job_id"

            case categorySlug = "category_slug"

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case description

            case requester

            case brandUid = "brand_uid"

            case customJson = "_custom_json"

            case shortDescription = "short_description"

            case highlights

            case tags

            case customOrder = "custom_order"

            case sizeGuide = "size_guide"

            case departments

            case multiSize = "multi_size"

            case action

            case hsnCode = "hsn_code"

            case templateTag = "template_tag"

            case trader

            case changeRequestId = "change_request_id"

            case media

            case productPublish = "product_publish"

            case uid

            case isActive = "is_active"

            case isSet = "is_set"

            case moq
        }

        public init(action: String?, brandUid: Int, bulkJobId: String?, categorySlug: String, changeRequestId: String?, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder?, departments: [Int], description: String?, highlights: [String]?, hsnCode: String, isActive: Bool?, isDependent: Bool?, isImageLessProduct: Bool?, isSet: Bool?, itemCode: String, itemType: String, media: [Media1]?, moq: OrderQuantity?, multiSize: Bool?, name: String, noOfBoxes: Int?, productGroupTag: [String]?, productPublish: ProductPublish?, requester: String?, returnConfig: ReturnConfig, shortDescription: String?, sizeGuide: String?, slug: String, tags: [String]?, teaserTag: TeaserTag?, templateTag: String, trader: [Trader], uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.isDependent = isDependent

            self.productGroupTag = productGroupTag

            self.currency = currency

            self.name = name

            self.companyId = companyId

            self.teaserTag = teaserTag

            self.variants = variants

            self.slug = slug

            self.itemCode = itemCode

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.itemType = itemType

            self.bulkJobId = bulkJobId

            self.categorySlug = categorySlug

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.description = description

            self.requester = requester

            self.brandUid = brandUid

            self.customJson = customJson

            self.shortDescription = shortDescription

            self.highlights = highlights

            self.tags = tags

            self.customOrder = customOrder

            self.sizeGuide = sizeGuide

            self.departments = departments

            self.multiSize = multiSize

            self.action = action

            self.hsnCode = hsnCode

            self.templateTag = templateTag

            self.trader = trader

            self.changeRequestId = changeRequestId

            self.media = media

            self.productPublish = productPublish

            self.uid = uid

            self.isActive = isActive

            self.isSet = isSet

            self.moq = moq
        }

        public func duplicate() -> ProductCreateUpdate {
            let dict = self.dictionary!
            let copy = ProductCreateUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            currency = try container.decode(String.self, forKey: .currency)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            slug = try container.decode(String.self, forKey: .slug)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(moq, forKey: .moq)
        }
    }
}
