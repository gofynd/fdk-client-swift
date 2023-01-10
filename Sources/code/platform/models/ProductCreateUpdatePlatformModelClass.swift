

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var countryOfOrigin: String

        public var shortDescription: String?

        public var sizeGuide: String?

        public var variantMedia: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var brandUid: Int

        public var description: String?

        public var isDependent: Bool?

        public var productPublish: ProductPublish?

        public var itemType: String

        public var companyId: Int

        public var uid: Int?

        public var trader: [Trader]

        public var multiSize: Bool?

        public var returnConfig: ReturnConfig

        public var isActive: Bool?

        public var bulkJobId: String?

        public var itemCode: [String: Any]

        public var name: [String: Any]

        public var currency: String

        public var categorySlug: String

        public var taxIdentifier: TaxIdentifier

        public var variants: [String: Any]?

        public var isImageLessProduct: Bool?

        public var customJson: [String: Any]?

        public var variantsGroup: [String: Any]?

        public var customOrder: CustomOrder?

        public var slug: String

        public var media: [Media1]?

        public var productGroupTag: [String]?

        public var departments: [Int]

        public var tags: [String]?

        public var teaserTag: TeaserTag?

        public var highlights: [String]?

        public var requester: String?

        public var templateTag: String

        public var noOfBoxes: Int?

        public var isSet: Bool?

        public var action: String?

        public var netQuantity: NetQuantity?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case shortDescription = "short_description"

            case sizeGuide = "size_guide"

            case variantMedia = "variant_media"

            case changeRequestId = "change_request_id"

            case brandUid = "brand_uid"

            case description

            case isDependent = "is_dependent"

            case productPublish = "product_publish"

            case itemType = "item_type"

            case companyId = "company_id"

            case uid

            case trader

            case multiSize = "multi_size"

            case returnConfig = "return_config"

            case isActive = "is_active"

            case bulkJobId = "bulk_job_id"

            case itemCode = "item_code"

            case name

            case currency

            case categorySlug = "category_slug"

            case taxIdentifier = "tax_identifier"

            case variants

            case isImageLessProduct = "is_image_less_product"

            case customJson = "_custom_json"

            case variantsGroup = "variants_group"

            case customOrder = "custom_order"

            case slug

            case media

            case productGroupTag = "product_group_tag"

            case departments

            case tags

            case teaserTag = "teaser_tag"

            case highlights

            case requester

            case templateTag = "template_tag"

            case noOfBoxes = "no_of_boxes"

            case isSet = "is_set"

            case action

            case netQuantity = "net_quantity"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantsGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.shortDescription = shortDescription

            self.sizeGuide = sizeGuide

            self.variantMedia = variantMedia

            self.changeRequestId = changeRequestId

            self.brandUid = brandUid

            self.description = description

            self.isDependent = isDependent

            self.productPublish = productPublish

            self.itemType = itemType

            self.companyId = companyId

            self.uid = uid

            self.trader = trader

            self.multiSize = multiSize

            self.returnConfig = returnConfig

            self.isActive = isActive

            self.bulkJobId = bulkJobId

            self.itemCode = itemCode

            self.name = name

            self.currency = currency

            self.categorySlug = categorySlug

            self.taxIdentifier = taxIdentifier

            self.variants = variants

            self.isImageLessProduct = isImageLessProduct

            self.customJson = customJson

            self.variantsGroup = variantsGroup

            self.customOrder = customOrder

            self.slug = slug

            self.media = media

            self.productGroupTag = productGroupTag

            self.departments = departments

            self.tags = tags

            self.teaserTag = teaserTag

            self.highlights = highlights

            self.requester = requester

            self.templateTag = templateTag

            self.noOfBoxes = noOfBoxes

            self.isSet = isSet

            self.action = action

            self.netQuantity = netQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            name = try container.decode([String: Any].self, forKey: .name)

            currency = try container.decode(String.self, forKey: .currency)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                media = try container.decode([Media1].self, forKey: .media)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(variantsGroup, forKey: .variantsGroup)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
        }
    }
}
