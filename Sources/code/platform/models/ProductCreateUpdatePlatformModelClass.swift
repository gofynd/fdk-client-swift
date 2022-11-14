

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var netQuantity: NetQuantity?

        public var variants: [String: Any]?

        public var customOrder: CustomOrder?

        public var tags: [String]?

        public var categorySlug: String

        public var name: String

        public var bulkJobId: String?

        public var isSet: Bool?

        public var sizeGuide: String?

        public var slug: String

        public var itemType: String

        public var highlights: [String]?

        public var noOfBoxes: Int?

        public var isDependent: Bool?

        public var uid: Int?

        public var changeRequestId: [String: Any]?

        public var requester: String?

        public var moq: OrderQuantity?

        public var description: String?

        public var productPublish: ProductPublish?

        public var trader: [Trader]

        public var action: String?

        public var shortDescription: String?

        public var companyId: Int

        public var multiSize: Bool?

        public var isActive: Bool?

        public var templateTag: String

        public var customJson: [String: Any]?

        public var returnConfig: ReturnConfig

        public var teaserTag: TeaserTag?

        public var departments: [Int]

        public var taxIdentifier: TaxIdentifier

        public var brandUid: Int

        public var itemCode: [String: Any]

        public var productGroupTag: [String]?

        public var countryOfOrigin: String

        public var isImageLessProduct: Bool?

        public var media: [Media1]?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case netQuantity = "net_quantity"

            case variants

            case customOrder = "custom_order"

            case tags

            case categorySlug = "category_slug"

            case name

            case bulkJobId = "bulk_job_id"

            case isSet = "is_set"

            case sizeGuide = "size_guide"

            case slug

            case itemType = "item_type"

            case highlights

            case noOfBoxes = "no_of_boxes"

            case isDependent = "is_dependent"

            case uid

            case changeRequestId = "change_request_id"

            case requester

            case moq

            case description

            case productPublish = "product_publish"

            case trader

            case action

            case shortDescription = "short_description"

            case companyId = "company_id"

            case multiSize = "multi_size"

            case isActive = "is_active"

            case templateTag = "template_tag"

            case customJson = "_custom_json"

            case returnConfig = "return_config"

            case teaserTag = "teaser_tag"

            case departments

            case taxIdentifier = "tax_identifier"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case productGroupTag = "product_group_tag"

            case countryOfOrigin = "country_of_origin"

            case isImageLessProduct = "is_image_less_product"

            case media

            case currency
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.netQuantity = netQuantity

            self.variants = variants

            self.customOrder = customOrder

            self.tags = tags

            self.categorySlug = categorySlug

            self.name = name

            self.bulkJobId = bulkJobId

            self.isSet = isSet

            self.sizeGuide = sizeGuide

            self.slug = slug

            self.itemType = itemType

            self.highlights = highlights

            self.noOfBoxes = noOfBoxes

            self.isDependent = isDependent

            self.uid = uid

            self.changeRequestId = changeRequestId

            self.requester = requester

            self.moq = moq

            self.description = description

            self.productPublish = productPublish

            self.trader = trader

            self.action = action

            self.shortDescription = shortDescription

            self.companyId = companyId

            self.multiSize = multiSize

            self.isActive = isActive

            self.templateTag = templateTag

            self.customJson = customJson

            self.returnConfig = returnConfig

            self.teaserTag = teaserTag

            self.departments = departments

            self.taxIdentifier = taxIdentifier

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.productGroupTag = productGroupTag

            self.countryOfOrigin = countryOfOrigin

            self.isImageLessProduct = isImageLessProduct

            self.media = media

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            name = try container.decode(String.self, forKey: .name)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                action = try container.decode(String.self, forKey: .action)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(uid, forKey: .uid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
