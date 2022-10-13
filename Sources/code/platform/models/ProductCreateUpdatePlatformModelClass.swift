

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var productGroupTag: [String]?

        public var customJson: [String: Any]?

        public var bulkJobId: String?

        public var templateTag: String

        public var shortDescription: String?

        public var isDependent: Bool?

        public var changeRequestId: [String: Any]?

        public var itemCode: [String: Any]

        public var noOfBoxes: Int?

        public var keywords: [String]?

        public var customOrder: CustomOrder?

        public var highlights: [String]?

        public var moq: OrderQuantity?

        public var isSet: Bool?

        public var action: String?

        public var disclaimer: String?

        public var requester: String?

        public var countryOfOrigin: String

        public var categorySlug: String

        public var brandUid: Int

        public var description: String?

        public var name: String

        public var sizeGuide: String?

        public var productPublish: ProductPublish?

        public var companyId: Int

        public var isActive: Bool?

        public var departments: [Int]

        public var teaserTag: TeaserTag?

        public var media: [Media1]?

        public var multiSize: Bool?

        public var tags: [String]?

        public var itemType: String

        public var returnConfig: ReturnConfig

        public var isImageLessProduct: Bool?

        public var slug: String

        public var uid: Int?

        public var currency: String

        public var taxIdentifier: TaxIdentifier

        public var trader: [Trader]

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case productGroupTag = "product_group_tag"

            case customJson = "_custom_json"

            case bulkJobId = "bulk_job_id"

            case templateTag = "template_tag"

            case shortDescription = "short_description"

            case isDependent = "is_dependent"

            case changeRequestId = "change_request_id"

            case itemCode = "item_code"

            case noOfBoxes = "no_of_boxes"

            case keywords

            case customOrder = "custom_order"

            case highlights

            case moq

            case isSet = "is_set"

            case action

            case disclaimer

            case requester

            case countryOfOrigin = "country_of_origin"

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case description

            case name

            case sizeGuide = "size_guide"

            case productPublish = "product_publish"

            case companyId = "company_id"

            case isActive = "is_active"

            case departments

            case teaserTag = "teaser_tag"

            case media

            case multiSize = "multi_size"

            case tags

            case itemType = "item_type"

            case returnConfig = "return_config"

            case isImageLessProduct = "is_image_less_product"

            case slug

            case uid

            case currency

            case taxIdentifier = "tax_identifier"

            case trader

            case variants
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, disclaimer: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, keywords: [String]? = nil, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.productGroupTag = productGroupTag

            self.customJson = customJson

            self.bulkJobId = bulkJobId

            self.templateTag = templateTag

            self.shortDescription = shortDescription

            self.isDependent = isDependent

            self.changeRequestId = changeRequestId

            self.itemCode = itemCode

            self.noOfBoxes = noOfBoxes

            self.keywords = keywords

            self.customOrder = customOrder

            self.highlights = highlights

            self.moq = moq

            self.isSet = isSet

            self.action = action

            self.disclaimer = disclaimer

            self.requester = requester

            self.countryOfOrigin = countryOfOrigin

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.description = description

            self.name = name

            self.sizeGuide = sizeGuide

            self.productPublish = productPublish

            self.companyId = companyId

            self.isActive = isActive

            self.departments = departments

            self.teaserTag = teaserTag

            self.media = media

            self.multiSize = multiSize

            self.tags = tags

            self.itemType = itemType

            self.returnConfig = returnConfig

            self.isImageLessProduct = isImageLessProduct

            self.slug = slug

            self.uid = uid

            self.currency = currency

            self.taxIdentifier = taxIdentifier

            self.trader = trader

            self.variants = variants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                keywords = try container.decode([String].self, forKey: .keywords)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                disclaimer = try container.decode(String.self, forKey: .disclaimer)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(keywords, forKey: .keywords)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(disclaimer, forKey: .disclaimer)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }
}
