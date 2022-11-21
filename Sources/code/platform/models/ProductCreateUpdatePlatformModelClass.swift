

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var itemCode: [String: Any]

        public var returnConfig: ReturnConfig

        public var variants: [String: Any]?

        public var slug: String

        public var netQuantity: NetQuantity?

        public var highlights: [String]?

        public var bulkJobId: String?

        public var media: [Media1]?

        public var isDependent: Bool?

        public var customOrder: CustomOrder?

        public var name: String

        public var noOfBoxes: Int?

        public var productPublish: ProductPublish?

        public var action: String?

        public var trader: [Trader]

        public var tags: [String]?

        public var requester: String?

        public var shortDescription: String?

        public var multiSize: Bool?

        public var itemType: String

        public var description: String?

        public var categorySlug: String

        public var brandUid: Int

        public var sizeGuide: String?

        public var isActive: Bool?

        public var changeRequestId: [String: Any]?

        public var countryOfOrigin: String

        public var moq: OrderQuantity?

        public var companyId: Int

        public var isSet: Bool?

        public var currency: String

        public var teaserTag: TeaserTag?

        public var productGroupTag: [String]?

        public var departments: [Int]

        public var customJson: [String: Any]?

        public var isImageLessProduct: Bool?

        public var uid: Int?

        public var templateTag: String

        public var taxIdentifier: TaxIdentifier

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case returnConfig = "return_config"

            case variants

            case slug

            case netQuantity = "net_quantity"

            case highlights

            case bulkJobId = "bulk_job_id"

            case media

            case isDependent = "is_dependent"

            case customOrder = "custom_order"

            case name

            case noOfBoxes = "no_of_boxes"

            case productPublish = "product_publish"

            case action

            case trader

            case tags

            case requester

            case shortDescription = "short_description"

            case multiSize = "multi_size"

            case itemType = "item_type"

            case description

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case sizeGuide = "size_guide"

            case isActive = "is_active"

            case changeRequestId = "change_request_id"

            case countryOfOrigin = "country_of_origin"

            case moq

            case companyId = "company_id"

            case isSet = "is_set"

            case currency

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case departments

            case customJson = "_custom_json"

            case isImageLessProduct = "is_image_less_product"

            case uid

            case templateTag = "template_tag"

            case taxIdentifier = "tax_identifier"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.itemCode = itemCode

            self.returnConfig = returnConfig

            self.variants = variants

            self.slug = slug

            self.netQuantity = netQuantity

            self.highlights = highlights

            self.bulkJobId = bulkJobId

            self.media = media

            self.isDependent = isDependent

            self.customOrder = customOrder

            self.name = name

            self.noOfBoxes = noOfBoxes

            self.productPublish = productPublish

            self.action = action

            self.trader = trader

            self.tags = tags

            self.requester = requester

            self.shortDescription = shortDescription

            self.multiSize = multiSize

            self.itemType = itemType

            self.description = description

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.sizeGuide = sizeGuide

            self.isActive = isActive

            self.changeRequestId = changeRequestId

            self.countryOfOrigin = countryOfOrigin

            self.moq = moq

            self.companyId = companyId

            self.isSet = isSet

            self.currency = currency

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.departments = departments

            self.customJson = customJson

            self.isImageLessProduct = isImageLessProduct

            self.uid = uid

            self.templateTag = templateTag

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                action = try container.decode(String.self, forKey: .action)

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

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
