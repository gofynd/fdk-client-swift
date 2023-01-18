

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var companyId: Int

        public var brandUid: Int

        public var returnConfig: ReturnConfig

        public var customJson: [String: Any]?

        public var multiSize: Bool?

        public var shortDescription: String?

        public var slug: String

        public var tags: [String]?

        public var requester: String?

        public var taxIdentifier: TaxIdentifier

        public var isImageLessProduct: Bool?

        public var netQuantity: NetQuantity?

        public var changeRequestId: [String: Any]?

        public var variantsGroup: [String: Any]?

        public var productPublish: ProductPublish?

        public var itemType: String

        public var highlights: [String]?

        public var noOfBoxes: Int?

        public var action: String?

        public var countryOfOrigin: String

        public var variants: [String: Any]?

        public var bulkJobId: String?

        public var categorySlug: String

        public var name: [String: Any]

        public var variantMedia: [String: Any]?

        public var media: [Media1]?

        public var sizeGuide: String?

        public var trader: [Trader]

        public var templateTag: String

        public var uid: Int?

        public var isSet: Bool?

        public var isActive: Bool?

        public var customOrder: CustomOrder?

        public var description: String?

        public var itemCode: [String: Any]

        public var isDependent: Bool?

        public var teaserTag: TeaserTag?

        public var departments: [Int]

        public var currency: String

        public var productGroupTag: [String]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case brandUid = "brand_uid"

            case returnConfig = "return_config"

            case customJson = "_custom_json"

            case multiSize = "multi_size"

            case shortDescription = "short_description"

            case slug

            case tags

            case requester

            case taxIdentifier = "tax_identifier"

            case isImageLessProduct = "is_image_less_product"

            case netQuantity = "net_quantity"

            case changeRequestId = "change_request_id"

            case variantsGroup = "variants_group"

            case productPublish = "product_publish"

            case itemType = "item_type"

            case highlights

            case noOfBoxes = "no_of_boxes"

            case action

            case countryOfOrigin = "country_of_origin"

            case variants

            case bulkJobId = "bulk_job_id"

            case categorySlug = "category_slug"

            case name

            case variantMedia = "variant_media"

            case media

            case sizeGuide = "size_guide"

            case trader

            case templateTag = "template_tag"

            case uid

            case isSet = "is_set"

            case isActive = "is_active"

            case customOrder = "custom_order"

            case description

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case teaserTag = "teaser_tag"

            case departments

            case currency

            case productGroupTag = "product_group_tag"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantsGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.companyId = companyId

            self.brandUid = brandUid

            self.returnConfig = returnConfig

            self.customJson = customJson

            self.multiSize = multiSize

            self.shortDescription = shortDescription

            self.slug = slug

            self.tags = tags

            self.requester = requester

            self.taxIdentifier = taxIdentifier

            self.isImageLessProduct = isImageLessProduct

            self.netQuantity = netQuantity

            self.changeRequestId = changeRequestId

            self.variantsGroup = variantsGroup

            self.productPublish = productPublish

            self.itemType = itemType

            self.highlights = highlights

            self.noOfBoxes = noOfBoxes

            self.action = action

            self.countryOfOrigin = countryOfOrigin

            self.variants = variants

            self.bulkJobId = bulkJobId

            self.categorySlug = categorySlug

            self.name = name

            self.variantMedia = variantMedia

            self.media = media

            self.sizeGuide = sizeGuide

            self.trader = trader

            self.templateTag = templateTag

            self.uid = uid

            self.isSet = isSet

            self.isActive = isActive

            self.customOrder = customOrder

            self.description = description

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.teaserTag = teaserTag

            self.departments = departments

            self.currency = currency

            self.productGroupTag = productGroupTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantsGroup = try container.decode([String: Any].self, forKey: .variantsGroup)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            departments = try container.decode([Int].self, forKey: .departments)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(variantsGroup, forKey: .variantsGroup)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)
        }
    }
}
