

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var productPublish: ProductPublish?

        public var trader: [Trader]

        public var variants: [String: Any]?

        public var itemType: String

        public var media: [Media1]?

        public var variantGroup: [String: Any]?

        public var isImageLessProduct: Bool?

        public var description: String?

        public var returnConfig: ReturnConfig

        public var currency: String

        public var brandUid: Int

        public var attributes: [String: Any]

        public var noOfBoxes: Int?

        public var action: String?

        public var isDependent: Bool?

        public var customJson: [String: Any]?

        public var sizeGuide: String?

        public var countryOfOrigin: String

        public var companyId: Int

        public var multiSize: Bool?

        public var highlights: [String]?

        public var variantMedia: [String: Any]?

        public var teaserTag: TeaserTag?

        public var slug: String

        public var customOrder: CustomOrder?

        public var uid: Int?

        public var changeRequestId: [String: Any]?

        public var shortDescription: String?

        public var taxIdentifier: TaxIdentifier

        public var departments: [Int]

        public var templateTag: String

        public var isSet: Bool?

        public var itemCode: [String: Any]

        public var productGroupTag: [String]?

        public var name: [String: Any]

        public var categorySlug: String

        public var requester: String?

        public var bulkJobId: String?

        public var isActive: Bool?

        public var netQuantity: NetQuantity?

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case productPublish = "product_publish"

            case trader

            case variants

            case itemType = "item_type"

            case media

            case variantGroup = "variant_group"

            case isImageLessProduct = "is_image_less_product"

            case description

            case returnConfig = "return_config"

            case currency

            case brandUid = "brand_uid"

            case attributes

            case noOfBoxes = "no_of_boxes"

            case action

            case isDependent = "is_dependent"

            case customJson = "_custom_json"

            case sizeGuide = "size_guide"

            case countryOfOrigin = "country_of_origin"

            case companyId = "company_id"

            case multiSize = "multi_size"

            case highlights

            case variantMedia = "variant_media"

            case teaserTag = "teaser_tag"

            case slug

            case customOrder = "custom_order"

            case uid

            case changeRequestId = "change_request_id"

            case shortDescription = "short_description"

            case taxIdentifier = "tax_identifier"

            case departments

            case templateTag = "template_tag"

            case isSet = "is_set"

            case itemCode = "item_code"

            case productGroupTag = "product_group_tag"

            case name

            case categorySlug = "category_slug"

            case requester

            case bulkJobId = "bulk_job_id"

            case isActive = "is_active"

            case netQuantity = "net_quantity"

            case tags
        }

        public init(action: String? = nil, attributes: [String: Any], brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.productPublish = productPublish

            self.trader = trader

            self.variants = variants

            self.itemType = itemType

            self.media = media

            self.variantGroup = variantGroup

            self.isImageLessProduct = isImageLessProduct

            self.description = description

            self.returnConfig = returnConfig

            self.currency = currency

            self.brandUid = brandUid

            self.attributes = attributes

            self.noOfBoxes = noOfBoxes

            self.action = action

            self.isDependent = isDependent

            self.customJson = customJson

            self.sizeGuide = sizeGuide

            self.countryOfOrigin = countryOfOrigin

            self.companyId = companyId

            self.multiSize = multiSize

            self.highlights = highlights

            self.variantMedia = variantMedia

            self.teaserTag = teaserTag

            self.slug = slug

            self.customOrder = customOrder

            self.uid = uid

            self.changeRequestId = changeRequestId

            self.shortDescription = shortDescription

            self.taxIdentifier = taxIdentifier

            self.departments = departments

            self.templateTag = templateTag

            self.isSet = isSet

            self.itemCode = itemCode

            self.productGroupTag = productGroupTag

            self.name = name

            self.categorySlug = categorySlug

            self.requester = requester

            self.bulkJobId = bulkJobId

            self.isActive = isActive

            self.netQuantity = netQuantity

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            currency = try container.decode(String.self, forKey: .currency)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

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

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            departments = try container.decode([Int].self, forKey: .departments)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(uid, forKey: .uid)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
