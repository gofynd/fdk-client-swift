

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var productPublish: ProductPublish?

        public var highlights: [String]?

        public var sizeGuide: String?

        public var itemType: String

        public var tags: [String]?

        public var media: [Media1]?

        public var taxIdentifier: TaxIdentifier

        public var name: String

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var categorySlug: String

        public var templateTag: String

        public var customJson: [String: Any]?

        public var productGroupTag: [String]?

        public var trader: [Trader]

        public var itemCode: [String: Any]

        public var isDependent: Bool?

        public var countryOfOrigin: String

        public var brandUid: Int

        public var teaserTag: TeaserTag?

        public var bulkJobId: String?

        public var currency: String

        public var uid: Int?

        public var noOfBoxes: Int?

        public var departments: [Int]

        public var companyId: Int

        public var moq: OrderQuantity?

        public var requester: String?

        public var returnConfig: ReturnConfig

        public var isSet: Bool?

        public var action: String?

        public var customOrder: CustomOrder?

        public var isActive: Bool?

        public var variantMedia: [String: Any]?

        public var shortDescription: String?

        public var slug: String

        public var description: String?

        public var changeRequestId: [String: Any]?

        public var multiSize: Bool?

        public enum CodingKeys: String, CodingKey {
            case productPublish = "product_publish"

            case highlights

            case sizeGuide = "size_guide"

            case itemType = "item_type"

            case tags

            case media

            case taxIdentifier = "tax_identifier"

            case name

            case variants

            case isImageLessProduct = "is_image_less_product"

            case categorySlug = "category_slug"

            case templateTag = "template_tag"

            case customJson = "_custom_json"

            case productGroupTag = "product_group_tag"

            case trader

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case countryOfOrigin = "country_of_origin"

            case brandUid = "brand_uid"

            case teaserTag = "teaser_tag"

            case bulkJobId = "bulk_job_id"

            case currency

            case uid

            case noOfBoxes = "no_of_boxes"

            case departments

            case companyId = "company_id"

            case moq

            case requester

            case returnConfig = "return_config"

            case isSet = "is_set"

            case action

            case customOrder = "custom_order"

            case isActive = "is_active"

            case variantMedia = "variant_media"

            case shortDescription = "short_description"

            case slug

            case description

            case changeRequestId = "change_request_id"

            case multiSize = "multi_size"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.productPublish = productPublish

            self.highlights = highlights

            self.sizeGuide = sizeGuide

            self.itemType = itemType

            self.tags = tags

            self.media = media

            self.taxIdentifier = taxIdentifier

            self.name = name

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.categorySlug = categorySlug

            self.templateTag = templateTag

            self.customJson = customJson

            self.productGroupTag = productGroupTag

            self.trader = trader

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.countryOfOrigin = countryOfOrigin

            self.brandUid = brandUid

            self.teaserTag = teaserTag

            self.bulkJobId = bulkJobId

            self.currency = currency

            self.uid = uid

            self.noOfBoxes = noOfBoxes

            self.departments = departments

            self.companyId = companyId

            self.moq = moq

            self.requester = requester

            self.returnConfig = returnConfig

            self.isSet = isSet

            self.action = action

            self.customOrder = customOrder

            self.isActive = isActive

            self.variantMedia = variantMedia

            self.shortDescription = shortDescription

            self.slug = slug

            self.description = description

            self.changeRequestId = changeRequestId

            self.multiSize = multiSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            name = try container.decode(String.self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            currency = try container.decode(String.self, forKey: .currency)

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

            departments = try container.decode([Int].self, forKey: .departments)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
        }
    }
}
