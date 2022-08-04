

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var isActive: Bool?

        public var currency: String

        public var departments: [Int]

        public var companyId: Int

        public var name: String

        public var variants: [String: Any]?

        public var isDependent: Bool?

        public var brandUid: Int

        public var itemType: String

        public var productGroupTag: [String]?

        public var sizeGuide: String?

        public var description: String?

        public var shortDescription: String?

        public var requester: String?

        public var bulkJobId: String?

        public var disclaimer: String?

        public var multiSize: Bool?

        public var noOfBoxes: Int?

        public var keywords: [String]?

        public var tags: [String]?

        public var customOrder: CustomOrder?

        public var countryOfOrigin: String

        public var categorySlug: String

        public var slug: String

        public var moq: OrderQuantity?

        public var media: [Media1]?

        public var itemCode: String

        public var teaserTag: TeaserTag?

        public var taxIdentifier: TaxIdentifier

        public var action: String?

        public var highlights: [String]?

        public var uid: Int?

        public var productPublish: ProductPublish?

        public var templateTag: String

        public var isImageLessProduct: Bool?

        public var trader: [Trader]

        public var returnConfig: ReturnConfig

        public var customJson: [String: Any]?

        public var changeRequestId: String?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case currency

            case departments

            case companyId = "company_id"

            case name

            case variants

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case itemType = "item_type"

            case productGroupTag = "product_group_tag"

            case sizeGuide = "size_guide"

            case description

            case shortDescription = "short_description"

            case requester

            case bulkJobId = "bulk_job_id"

            case disclaimer

            case multiSize = "multi_size"

            case noOfBoxes = "no_of_boxes"

            case keywords

            case tags

            case customOrder = "custom_order"

            case countryOfOrigin = "country_of_origin"

            case categorySlug = "category_slug"

            case slug

            case moq

            case media

            case itemCode = "item_code"

            case teaserTag = "teaser_tag"

            case taxIdentifier = "tax_identifier"

            case action

            case highlights

            case uid

            case productPublish = "product_publish"

            case templateTag = "template_tag"

            case isImageLessProduct = "is_image_less_product"

            case trader

            case returnConfig = "return_config"

            case customJson = "_custom_json"

            case changeRequestId = "change_request_id"

            case isSet = "is_set"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, disclaimer: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, keywords: [String]? = nil, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.currency = currency

            self.departments = departments

            self.companyId = companyId

            self.name = name

            self.variants = variants

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.itemType = itemType

            self.productGroupTag = productGroupTag

            self.sizeGuide = sizeGuide

            self.description = description

            self.shortDescription = shortDescription

            self.requester = requester

            self.bulkJobId = bulkJobId

            self.disclaimer = disclaimer

            self.multiSize = multiSize

            self.noOfBoxes = noOfBoxes

            self.keywords = keywords

            self.tags = tags

            self.customOrder = customOrder

            self.countryOfOrigin = countryOfOrigin

            self.categorySlug = categorySlug

            self.slug = slug

            self.moq = moq

            self.media = media

            self.itemCode = itemCode

            self.teaserTag = teaserTag

            self.taxIdentifier = taxIdentifier

            self.action = action

            self.highlights = highlights

            self.uid = uid

            self.productPublish = productPublish

            self.templateTag = templateTag

            self.isImageLessProduct = isImageLessProduct

            self.trader = trader

            self.returnConfig = returnConfig

            self.customJson = customJson

            self.changeRequestId = changeRequestId

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            departments = try container.decode([Int].self, forKey: .departments)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                description = try container.decode(String.self, forKey: .description)

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
                requester = try container.decode(String.self, forKey: .requester)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

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
                uid = try container.decode(Int.self, forKey: .uid)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encode(disclaimer, forKey: .disclaimer)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(keywords, forKey: .keywords)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
