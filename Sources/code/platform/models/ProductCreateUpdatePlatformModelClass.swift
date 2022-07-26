

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var categorySlug: String

        public var itemCode: String

        public var productPublish: ProductPublish?

        public var brandUid: Int

        public var slug: String

        public var currency: String

        public var bulkJobId: String?

        public var trader: [Trader]

        public var shortDescription: String?

        public var requester: String?

        public var sizeGuide: String?

        public var isDependent: Bool?

        public var itemType: String

        public var uid: Int?

        public var action: String?

        public var disclaimer: String?

        public var name: String

        public var returnConfig: ReturnConfig

        public var description: String?

        public var productGroupTag: [String]?

        public var media: [Media1]?

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var companyId: Int

        public var multiSize: Bool?

        public var countryOfOrigin: String

        public var isActive: Bool?

        public var isSet: Bool?

        public var moq: OrderQuantity?

        public var highlights: [String]?

        public var variants: [String: Any]?

        public var tags: [String]?

        public var departments: [Int]

        public var taxIdentifier: TaxIdentifier

        public var changeRequestId: String?

        public var customJson: [String: Any]?

        public var keywords: [String]?

        public var teaserTag: TeaserTag?

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case itemCode = "item_code"

            case productPublish = "product_publish"

            case brandUid = "brand_uid"

            case slug

            case currency

            case bulkJobId = "bulk_job_id"

            case trader

            case shortDescription = "short_description"

            case requester

            case sizeGuide = "size_guide"

            case isDependent = "is_dependent"

            case itemType = "item_type"

            case uid

            case action

            case disclaimer

            case name

            case returnConfig = "return_config"

            case description

            case productGroupTag = "product_group_tag"

            case media

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case companyId = "company_id"

            case multiSize = "multi_size"

            case countryOfOrigin = "country_of_origin"

            case isActive = "is_active"

            case isSet = "is_set"

            case moq

            case highlights

            case variants

            case tags

            case departments

            case taxIdentifier = "tax_identifier"

            case changeRequestId = "change_request_id"

            case customJson = "_custom_json"

            case keywords

            case teaserTag = "teaser_tag"

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, disclaimer: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, keywords: [String]? = nil, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.itemCode = itemCode

            self.productPublish = productPublish

            self.brandUid = brandUid

            self.slug = slug

            self.currency = currency

            self.bulkJobId = bulkJobId

            self.trader = trader

            self.shortDescription = shortDescription

            self.requester = requester

            self.sizeGuide = sizeGuide

            self.isDependent = isDependent

            self.itemType = itemType

            self.uid = uid

            self.action = action

            self.disclaimer = disclaimer

            self.name = name

            self.returnConfig = returnConfig

            self.description = description

            self.productGroupTag = productGroupTag

            self.media = media

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.companyId = companyId

            self.multiSize = multiSize

            self.countryOfOrigin = countryOfOrigin

            self.isActive = isActive

            self.isSet = isSet

            self.moq = moq

            self.highlights = highlights

            self.variants = variants

            self.tags = tags

            self.departments = departments

            self.taxIdentifier = taxIdentifier

            self.changeRequestId = changeRequestId

            self.customJson = customJson

            self.keywords = keywords

            self.teaserTag = teaserTag

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            slug = try container.decode(String.self, forKey: .slug)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            name = try container.decode(String.self, forKey: .name)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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
                keywords = try container.decode([String].self, forKey: .keywords)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(disclaimer, forKey: .disclaimer)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(keywords, forKey: .keywords)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)
        }
    }
}
