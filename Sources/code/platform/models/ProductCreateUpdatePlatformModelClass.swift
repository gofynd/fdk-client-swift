

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var categorySlug: String

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var isDependent: Bool?

        public var action: String?

        public var itemType: String

        public var requester: String?

        public var returnConfig: ReturnConfig

        public var shortDescription: String?

        public var departments: [Int]

        public var variants: [String: Any]?

        public var currency: String

        public var slug: String

        public var teaserTag: TeaserTag?

        public var netQuantity: NetQuantity?

        public var noOfBoxes: Int?

        public var name: [String: Any]

        public var sizeGuide: String?

        public var multiSize: Bool?

        public var productGroupTag: [String]?

        public var media: [Media1]?

        public var bulkJobId: String?

        public var variantMedia: [String: Any]?

        public var isSet: Bool?

        public var taxIdentifier: TaxIdentifier

        public var brandUid: Int

        public var companyId: Int

        public var productPublish: ProductPublish?

        public var highlights: [String]?

        public var isImageLessProduct: Bool?

        public var trader: [Trader]

        public var description: String?

        public var changeRequestId: [String: Any]?

        public var itemCode: [String: Any]

        public var tags: [String]?

        public var uid: Int?

        public var countryOfOrigin: String

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case isDependent = "is_dependent"

            case action

            case itemType = "item_type"

            case requester

            case returnConfig = "return_config"

            case shortDescription = "short_description"

            case departments

            case variants

            case currency

            case slug

            case teaserTag = "teaser_tag"

            case netQuantity = "net_quantity"

            case noOfBoxes = "no_of_boxes"

            case name

            case sizeGuide = "size_guide"

            case multiSize = "multi_size"

            case productGroupTag = "product_group_tag"

            case media

            case bulkJobId = "bulk_job_id"

            case variantMedia = "variant_media"

            case isSet = "is_set"

            case taxIdentifier = "tax_identifier"

            case brandUid = "brand_uid"

            case companyId = "company_id"

            case productPublish = "product_publish"

            case highlights

            case isImageLessProduct = "is_image_less_product"

            case trader

            case description

            case changeRequestId = "change_request_id"

            case itemCode = "item_code"

            case tags

            case uid

            case countryOfOrigin = "country_of_origin"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.customJson = customJson

            self.isActive = isActive

            self.isDependent = isDependent

            self.action = action

            self.itemType = itemType

            self.requester = requester

            self.returnConfig = returnConfig

            self.shortDescription = shortDescription

            self.departments = departments

            self.variants = variants

            self.currency = currency

            self.slug = slug

            self.teaserTag = teaserTag

            self.netQuantity = netQuantity

            self.noOfBoxes = noOfBoxes

            self.name = name

            self.sizeGuide = sizeGuide

            self.multiSize = multiSize

            self.productGroupTag = productGroupTag

            self.media = media

            self.bulkJobId = bulkJobId

            self.variantMedia = variantMedia

            self.isSet = isSet

            self.taxIdentifier = taxIdentifier

            self.brandUid = brandUid

            self.companyId = companyId

            self.productPublish = productPublish

            self.highlights = highlights

            self.isImageLessProduct = isImageLessProduct

            self.trader = trader

            self.description = description

            self.changeRequestId = changeRequestId

            self.itemCode = itemCode

            self.tags = tags

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            companyId = try container.decode(Int.self, forKey: .companyId)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}
