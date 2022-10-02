

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var isDependent: Bool?

        public var isSet: Bool?

        public var returnConfig: ReturnConfig

        public var itemType: String

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var netQuantity: NetQuantity?

        public var description: String?

        public var highlights: [String]?

        public var countryOfOrigin: String

        public var uid: Int?

        public var productGroupTag: [String]?

        public var name: String

        public var shortDescription: String?

        public var productPublish: ProductPublish?

        public var bulkJobId: String?

        public var categorySlug: String

        public var multiSize: Bool?

        public var changeRequestId: [String: Any]?

        public var tags: [String]?

        public var variants: [String: Any]?

        public var companyId: Int

        public var slug: String

        public var media: [Media1]?

        public var departments: [Int]

        public var isImageLessProduct: Bool?

        public var teaserTag: TeaserTag?

        public var sizeGuide: String?

        public var action: String?

        public var itemCode: [String: Any]

        public var taxIdentifier: TaxIdentifier

        public var currency: String

        public var brandUid: Int

        public var customOrder: CustomOrder?

        public var moq: OrderQuantity?

        public var noOfBoxes: Int?

        public var trader: [Trader]

        public var templateTag: String

        public var requester: String?

        public enum CodingKeys: String, CodingKey {
            case isDependent = "is_dependent"

            case isSet = "is_set"

            case returnConfig = "return_config"

            case itemType = "item_type"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case netQuantity = "net_quantity"

            case description

            case highlights

            case countryOfOrigin = "country_of_origin"

            case uid

            case productGroupTag = "product_group_tag"

            case name

            case shortDescription = "short_description"

            case productPublish = "product_publish"

            case bulkJobId = "bulk_job_id"

            case categorySlug = "category_slug"

            case multiSize = "multi_size"

            case changeRequestId = "change_request_id"

            case tags

            case variants

            case companyId = "company_id"

            case slug

            case media

            case departments

            case isImageLessProduct = "is_image_less_product"

            case teaserTag = "teaser_tag"

            case sizeGuide = "size_guide"

            case action

            case itemCode = "item_code"

            case taxIdentifier = "tax_identifier"

            case currency

            case brandUid = "brand_uid"

            case customOrder = "custom_order"

            case moq

            case noOfBoxes = "no_of_boxes"

            case trader

            case templateTag = "template_tag"

            case requester
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.isDependent = isDependent

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.itemType = itemType

            self.customJson = customJson

            self.isActive = isActive

            self.netQuantity = netQuantity

            self.description = description

            self.highlights = highlights

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.productGroupTag = productGroupTag

            self.name = name

            self.shortDescription = shortDescription

            self.productPublish = productPublish

            self.bulkJobId = bulkJobId

            self.categorySlug = categorySlug

            self.multiSize = multiSize

            self.changeRequestId = changeRequestId

            self.tags = tags

            self.variants = variants

            self.companyId = companyId

            self.slug = slug

            self.media = media

            self.departments = departments

            self.isImageLessProduct = isImageLessProduct

            self.teaserTag = teaserTag

            self.sizeGuide = sizeGuide

            self.action = action

            self.itemCode = itemCode

            self.taxIdentifier = taxIdentifier

            self.currency = currency

            self.brandUid = brandUid

            self.customOrder = customOrder

            self.moq = moq

            self.noOfBoxes = noOfBoxes

            self.trader = trader

            self.templateTag = templateTag

            self.requester = requester
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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(requester, forKey: .requester)
        }
    }
}
