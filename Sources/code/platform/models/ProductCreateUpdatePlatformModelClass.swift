

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var action: String?

        public var productPublish: ProductPublish?

        public var customOrder: CustomOrder?

        public var highlights: [String]?

        public var bulkJobId: String?

        public var slug: String

        public var itemType: String

        public var sizeGuide: String?

        public var returnConfig: ReturnConfig

        public var teaserTag: TeaserTag?

        public var templateTag: String

        public var isSet: Bool?

        public var uid: Int?

        public var countryOfOrigin: String

        public var noOfBoxes: Int?

        public var customJson: [String: Any]?

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var isActive: Bool?

        public var media: [Media1]?

        public var moq: OrderQuantity?

        public var shortDescription: String?

        public var keywords: [String]?

        public var requester: String?

        public var variants: [String: Any]?

        public var name: String

        public var disclaimer: String?

        public var multiSize: Bool?

        public var tags: [String]?

        public var trader: [Trader]

        public var itemCode: String

        public var departments: [Int]

        public var changeRequestId: String?

        public var description: String?

        public var companyId: Int

        public var currency: String

        public var categorySlug: String

        public var brandUid: Int

        public var productGroupTag: [String]?

        public var isDependent: Bool?

        public enum CodingKeys: String, CodingKey {
            case action

            case productPublish = "product_publish"

            case customOrder = "custom_order"

            case highlights

            case bulkJobId = "bulk_job_id"

            case slug

            case itemType = "item_type"

            case sizeGuide = "size_guide"

            case returnConfig = "return_config"

            case teaserTag = "teaser_tag"

            case templateTag = "template_tag"

            case isSet = "is_set"

            case uid

            case countryOfOrigin = "country_of_origin"

            case noOfBoxes = "no_of_boxes"

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case isActive = "is_active"

            case media

            case moq

            case shortDescription = "short_description"

            case keywords

            case requester

            case variants

            case name

            case disclaimer

            case multiSize = "multi_size"

            case tags

            case trader

            case itemCode = "item_code"

            case departments

            case changeRequestId = "change_request_id"

            case description

            case companyId = "company_id"

            case currency

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case productGroupTag = "product_group_tag"

            case isDependent = "is_dependent"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, disclaimer: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, keywords: [String]? = nil, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.action = action

            self.productPublish = productPublish

            self.customOrder = customOrder

            self.highlights = highlights

            self.bulkJobId = bulkJobId

            self.slug = slug

            self.itemType = itemType

            self.sizeGuide = sizeGuide

            self.returnConfig = returnConfig

            self.teaserTag = teaserTag

            self.templateTag = templateTag

            self.isSet = isSet

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.noOfBoxes = noOfBoxes

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.isActive = isActive

            self.media = media

            self.moq = moq

            self.shortDescription = shortDescription

            self.keywords = keywords

            self.requester = requester

            self.variants = variants

            self.name = name

            self.disclaimer = disclaimer

            self.multiSize = multiSize

            self.tags = tags

            self.trader = trader

            self.itemCode = itemCode

            self.departments = departments

            self.changeRequestId = changeRequestId

            self.description = description

            self.companyId = companyId

            self.currency = currency

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.productGroupTag = productGroupTag

            self.isDependent = isDependent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                media = try container.decode([Media1].self, forKey: .media)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                requester = try container.decode(String.self, forKey: .requester)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                disclaimer = try container.decode(String.self, forKey: .disclaimer)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(keywords, forKey: .keywords)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(disclaimer, forKey: .disclaimer)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)
        }
    }
}
