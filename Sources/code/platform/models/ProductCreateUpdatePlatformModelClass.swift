

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var templateTag: String

        public var isDependent: Bool?

        public var multiSize: Bool?

        public var uid: Int?

        public var requester: String?

        public var media: [Media1]?

        public var productPublish: ProductPublish?

        public var name: String

        public var productGroupTag: [String]?

        public var description: String?

        public var isImageLessProduct: Bool?

        public var sizeGuide: String?

        public var departments: [Int]

        public var action: String?

        public var tags: [String]?

        public var noOfBoxes: Int?

        public var teaserTag: TeaserTag?

        public var variantMedia: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var companyId: Int

        public var bulkJobId: String?

        public var variants: [String: Any]?

        public var itemType: String

        public var isActive: Bool?

        public var taxIdentifier: TaxIdentifier

        public var customOrder: CustomOrder?

        public var trader: [Trader]

        public var shortDescription: String?

        public var returnConfig: ReturnConfig

        public var categorySlug: String

        public var itemCode: [String: Any]

        public var countryOfOrigin: String

        public var highlights: [String]?

        public var slug: String

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var netQuantity: NetQuantity

        public var currency: String

        public var brandUid: Int

        public enum CodingKeys: String, CodingKey {
            case templateTag = "template_tag"

            case isDependent = "is_dependent"

            case multiSize = "multi_size"

            case uid

            case requester

            case media

            case productPublish = "product_publish"

            case name

            case productGroupTag = "product_group_tag"

            case description

            case isImageLessProduct = "is_image_less_product"

            case sizeGuide = "size_guide"

            case departments

            case action

            case tags

            case noOfBoxes = "no_of_boxes"

            case teaserTag = "teaser_tag"

            case variantMedia = "variant_media"

            case changeRequestId = "change_request_id"

            case companyId = "company_id"

            case bulkJobId = "bulk_job_id"

            case variants

            case itemType = "item_type"

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case customOrder = "custom_order"

            case trader

            case shortDescription = "short_description"

            case returnConfig = "return_config"

            case categorySlug = "category_slug"

            case itemCode = "item_code"

            case countryOfOrigin = "country_of_origin"

            case highlights

            case slug

            case isSet = "is_set"

            case customJson = "_custom_json"

            case netQuantity = "net_quantity"

            case currency

            case brandUid = "brand_uid"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.templateTag = templateTag

            self.isDependent = isDependent

            self.multiSize = multiSize

            self.uid = uid

            self.requester = requester

            self.media = media

            self.productPublish = productPublish

            self.name = name

            self.productGroupTag = productGroupTag

            self.description = description

            self.isImageLessProduct = isImageLessProduct

            self.sizeGuide = sizeGuide

            self.departments = departments

            self.action = action

            self.tags = tags

            self.noOfBoxes = noOfBoxes

            self.teaserTag = teaserTag

            self.variantMedia = variantMedia

            self.changeRequestId = changeRequestId

            self.companyId = companyId

            self.bulkJobId = bulkJobId

            self.variants = variants

            self.itemType = itemType

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.customOrder = customOrder

            self.trader = trader

            self.shortDescription = shortDescription

            self.returnConfig = returnConfig

            self.categorySlug = categorySlug

            self.itemCode = itemCode

            self.countryOfOrigin = countryOfOrigin

            self.highlights = highlights

            self.slug = slug

            self.isSet = isSet

            self.customJson = customJson

            self.netQuantity = netQuantity

            self.currency = currency

            self.brandUid = brandUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                uid = try container.decode(Int.self, forKey: .uid)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            currency = try container.decode(String.self, forKey: .currency)

            brandUid = try container.decode(Int.self, forKey: .brandUid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
        }
    }
}
