

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdateRequest
         Used By: Catalog
     */

    class ProductCreateUpdateRequest: Codable {
        public var categorySlug: String

        public var multiSize: Bool?

        public var brandUid: Int

        public var uid: Int?

        public var currency: String

        public var variantsGroup: [String: Any]?

        public var highlights: [String]?

        public var itemCode: [String: Any]

        public var changeRequestId: [String: Any]?

        public var returnConfig: ReturnConfig

        public var action: String?

        public var customJson: [String: Any]?

        public var teaserTag: TeaserTag?

        public var templateTag: String

        public var media: [Media1]?

        public var shortDescription: String?

        public var requester: String?

        public var customOrder: CustomOrder?

        public var variants: [String: Any]?

        public var isDependent: Bool?

        public var taxIdentifier: TaxIdentifier

        public var name: [String: Any]

        public var productGroupTag: [String]?

        public var sizeGuide: String?

        public var variantMedia: [String: Any]?

        public var isSet: Bool?

        public var itemType: String

        public var isActive: Bool?

        public var companyId: Int?

        public var productPublish: ProductPublish?

        public var bulkJobId: String?

        public var countryOfOrigin: String

        public var netQuantity: NetQuantity?

        public var tags: [String]?

        public var slug: String

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var departments: [Int]

        public var description: String?

        public var trader: [Trader]

        public enum CodingKeys: String, CodingKey {
            case categorySlug = "category_slug"

            case multiSize = "multi_size"

            case brandUid = "brand_uid"

            case uid

            case currency

            case variantsGroup = "variants_group"

            case highlights

            case itemCode = "item_code"

            case changeRequestId = "change_request_id"

            case returnConfig = "return_config"

            case action

            case customJson = "_custom_json"

            case teaserTag = "teaser_tag"

            case templateTag = "template_tag"

            case media

            case shortDescription = "short_description"

            case requester

            case customOrder = "custom_order"

            case variants

            case isDependent = "is_dependent"

            case taxIdentifier = "tax_identifier"

            case name

            case productGroupTag = "product_group_tag"

            case sizeGuide = "size_guide"

            case variantMedia = "variant_media"

            case isSet = "is_set"

            case itemType = "item_type"

            case isActive = "is_active"

            case companyId = "company_id"

            case productPublish = "product_publish"

            case bulkJobId = "bulk_job_id"

            case countryOfOrigin = "country_of_origin"

            case netQuantity = "net_quantity"

            case tags

            case slug

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case departments

            case description

            case trader
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int? = nil, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantsGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.categorySlug = categorySlug

            self.multiSize = multiSize

            self.brandUid = brandUid

            self.uid = uid

            self.currency = currency

            self.variantsGroup = variantsGroup

            self.highlights = highlights

            self.itemCode = itemCode

            self.changeRequestId = changeRequestId

            self.returnConfig = returnConfig

            self.action = action

            self.customJson = customJson

            self.teaserTag = teaserTag

            self.templateTag = templateTag

            self.media = media

            self.shortDescription = shortDescription

            self.requester = requester

            self.customOrder = customOrder

            self.variants = variants

            self.isDependent = isDependent

            self.taxIdentifier = taxIdentifier

            self.name = name

            self.productGroupTag = productGroupTag

            self.sizeGuide = sizeGuide

            self.variantMedia = variantMedia

            self.isSet = isSet

            self.itemType = itemType

            self.isActive = isActive

            self.companyId = companyId

            self.productPublish = productPublish

            self.bulkJobId = bulkJobId

            self.countryOfOrigin = countryOfOrigin

            self.netQuantity = netQuantity

            self.tags = tags

            self.slug = slug

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.departments = departments

            self.description = description

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                variantsGroup = try container.decode([String: Any].self, forKey: .variantsGroup)

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

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                media = try container.decode([Media1].self, forKey: .media)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            name = try container.decode([String: Any].self, forKey: .name)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

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

            slug = try container.decode(String.self, forKey: .slug)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variantsGroup, forKey: .variantsGroup)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(trader, forKey: .trader)
        }
    }
}
