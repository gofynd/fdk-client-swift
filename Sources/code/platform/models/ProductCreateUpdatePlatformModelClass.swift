

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var productPublish: ProductPublish?

        public var productGroupTag: [String]?

        public var companyId: Int

        public var customJson: [String: Any]?

        public var categorySlug: String

        public var customOrder: CustomOrder?

        public var action: String?

        public var itemCode: [String: Any]

        public var netQuantity: NetQuantity?

        public var name: String

        public var highlights: [String]?

        public var shortDescription: String?

        public var media: [Media1]?

        public var tags: [String]?

        public var countryOfOrigin: String

        public var requester: String?

        public var itemType: String

        public var variants: [String: Any]?

        public var returnConfig: ReturnConfig

        public var isDependent: Bool?

        public var isSet: Bool?

        public var variantMedia: [String: Any]?

        public var noOfBoxes: Int?

        public var changeRequestId: [String: Any]?

        public var brandUid: Int

        public var uid: Int?

        public var description: String?

        public var slug: String

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var isActive: Bool?

        public var trader: [Trader]

        public var bulkJobId: String?

        public var departments: [Int]

        public var teaserTag: TeaserTag?

        public var currency: String

        public var templateTag: String

        public var multiSize: Bool?

        public var sizeGuide: String?

        public enum CodingKeys: String, CodingKey {
            case productPublish = "product_publish"

            case productGroupTag = "product_group_tag"

            case companyId = "company_id"

            case customJson = "_custom_json"

            case categorySlug = "category_slug"

            case customOrder = "custom_order"

            case action

            case itemCode = "item_code"

            case netQuantity = "net_quantity"

            case name

            case highlights

            case shortDescription = "short_description"

            case media

            case tags

            case countryOfOrigin = "country_of_origin"

            case requester

            case itemType = "item_type"

            case variants

            case returnConfig = "return_config"

            case isDependent = "is_dependent"

            case isSet = "is_set"

            case variantMedia = "variant_media"

            case noOfBoxes = "no_of_boxes"

            case changeRequestId = "change_request_id"

            case brandUid = "brand_uid"

            case uid

            case description

            case slug

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case isActive = "is_active"

            case trader

            case bulkJobId = "bulk_job_id"

            case departments

            case teaserTag = "teaser_tag"

            case currency

            case templateTag = "template_tag"

            case multiSize = "multi_size"

            case sizeGuide = "size_guide"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.productPublish = productPublish

            self.productGroupTag = productGroupTag

            self.companyId = companyId

            self.customJson = customJson

            self.categorySlug = categorySlug

            self.customOrder = customOrder

            self.action = action

            self.itemCode = itemCode

            self.netQuantity = netQuantity

            self.name = name

            self.highlights = highlights

            self.shortDescription = shortDescription

            self.media = media

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.requester = requester

            self.itemType = itemType

            self.variants = variants

            self.returnConfig = returnConfig

            self.isDependent = isDependent

            self.isSet = isSet

            self.variantMedia = variantMedia

            self.noOfBoxes = noOfBoxes

            self.changeRequestId = changeRequestId

            self.brandUid = brandUid

            self.uid = uid

            self.description = description

            self.slug = slug

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.isActive = isActive

            self.trader = trader

            self.bulkJobId = bulkJobId

            self.departments = departments

            self.teaserTag = teaserTag

            self.currency = currency

            self.templateTag = templateTag

            self.multiSize = multiSize

            self.sizeGuide = sizeGuide
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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            slug = try container.decode(String.self, forKey: .slug)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            currency = try container.decode(String.self, forKey: .currency)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
        }
    }
}
