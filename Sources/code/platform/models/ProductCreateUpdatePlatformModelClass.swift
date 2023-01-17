

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var changeRequestId: [String: Any]?

        public var isImageLessProduct: Bool?

        public var itemType: String

        public var noOfBoxes: Int?

        public var categorySlug: String

        public var slug: String

        public var departments: [Int]

        public var taxIdentifier: TaxIdentifier

        public var description: String?

        public var brandUid: Int

        public var variantMedia: [String: Any]?

        public var uid: Int?

        public var isActive: Bool?

        public var returnConfig: ReturnConfig

        public var isSet: Bool?

        public var trader: [Trader]

        public var bulkJobId: String?

        public var customOrder: CustomOrder?

        public var currency: String

        public var name: String

        public var action: String?

        public var templateTag: String

        public var highlights: [String]?

        public var requester: String?

        public var teaserTag: TeaserTag?

        public var isDependent: Bool?

        public var itemCode: [String: Any]

        public var customJson: [String: Any]?

        public var sizeGuide: String?

        public var tags: [String]?

        public var productGroupTag: [String]?

        public var countryOfOrigin: String

        public var companyId: Int

        public var netQuantity: NetQuantity?

        public var multiSize: Bool?

        public var shortDescription: String?

        public var media: [Media1]?

        public var productPublish: ProductPublish?

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case changeRequestId = "change_request_id"

            case isImageLessProduct = "is_image_less_product"

            case itemType = "item_type"

            case noOfBoxes = "no_of_boxes"

            case categorySlug = "category_slug"

            case slug

            case departments

            case taxIdentifier = "tax_identifier"

            case description

            case brandUid = "brand_uid"

            case variantMedia = "variant_media"

            case uid

            case isActive = "is_active"

            case returnConfig = "return_config"

            case isSet = "is_set"

            case trader

            case bulkJobId = "bulk_job_id"

            case customOrder = "custom_order"

            case currency

            case name

            case action

            case templateTag = "template_tag"

            case highlights

            case requester

            case teaserTag = "teaser_tag"

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case customJson = "_custom_json"

            case sizeGuide = "size_guide"

            case tags

            case productGroupTag = "product_group_tag"

            case countryOfOrigin = "country_of_origin"

            case companyId = "company_id"

            case netQuantity = "net_quantity"

            case multiSize = "multi_size"

            case shortDescription = "short_description"

            case media

            case productPublish = "product_publish"

            case variants
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.changeRequestId = changeRequestId

            self.isImageLessProduct = isImageLessProduct

            self.itemType = itemType

            self.noOfBoxes = noOfBoxes

            self.categorySlug = categorySlug

            self.slug = slug

            self.departments = departments

            self.taxIdentifier = taxIdentifier

            self.description = description

            self.brandUid = brandUid

            self.variantMedia = variantMedia

            self.uid = uid

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.isSet = isSet

            self.trader = trader

            self.bulkJobId = bulkJobId

            self.customOrder = customOrder

            self.currency = currency

            self.name = name

            self.action = action

            self.templateTag = templateTag

            self.highlights = highlights

            self.requester = requester

            self.teaserTag = teaserTag

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.customJson = customJson

            self.sizeGuide = sizeGuide

            self.tags = tags

            self.productGroupTag = productGroupTag

            self.countryOfOrigin = countryOfOrigin

            self.companyId = companyId

            self.netQuantity = netQuantity

            self.multiSize = multiSize

            self.shortDescription = shortDescription

            self.media = media

            self.productPublish = productPublish

            self.variants = variants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            slug = try container.decode(String.self, forKey: .slug)

            departments = try container.decode([Int].self, forKey: .departments)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            currency = try container.decode(String.self, forKey: .currency)

            name = try container.decode(String.self, forKey: .name)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }
}
