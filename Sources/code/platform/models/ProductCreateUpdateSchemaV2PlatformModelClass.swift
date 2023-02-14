

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var noOfBoxes: Int?

        public var taxIdentifier: TaxIdentifier

        public var sizeGuide: String?

        public var isSet: Bool?

        public var variantMedia: [String: Any]?

        public var departments: [Int]

        public var attributes: [String: Any]

        public var description: String?

        public var multiSize: Bool?

        public var itemType: String

        public var variants: [String: Any]?

        public var slug: String

        public var netQuantity: NetQuantity?

        public var templateTag: String

        public var productGroupTag: [String]?

        public var variantGroup: [String: Any]?

        public var requester: String?

        public var changeRequestId: [String: Any]?

        public var trader: [Trader]

        public var customOrder: CustomOrder?

        public var brandUid: Int

        public var categorySlug: String

        public var isActive: Bool?

        public var highlights: [String]?

        public var customJson: [String: Any]?

        public var teaserTag: TeaserTag?

        public var media: [Media1]?

        public var tags: [String]?

        public var bulkJobId: String?

        public var isDependent: Bool?

        public var returnConfig: ReturnConfig

        public var shortDescription: String?

        public var productPublish: ProductPublish?

        public var countryOfOrigin: String

        public var sizes: [[String: Any]]

        public var uid: Int?

        public var action: String?

        public var currency: String

        public var name: String

        public var itemCode: String

        public var isImageLessProduct: Bool?

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case noOfBoxes = "no_of_boxes"

            case taxIdentifier = "tax_identifier"

            case sizeGuide = "size_guide"

            case isSet = "is_set"

            case variantMedia = "variant_media"

            case departments

            case attributes

            case description

            case multiSize = "multi_size"

            case itemType = "item_type"

            case variants

            case slug

            case netQuantity = "net_quantity"

            case templateTag = "template_tag"

            case productGroupTag = "product_group_tag"

            case variantGroup = "variant_group"

            case requester

            case changeRequestId = "change_request_id"

            case trader

            case customOrder = "custom_order"

            case brandUid = "brand_uid"

            case categorySlug = "category_slug"

            case isActive = "is_active"

            case highlights

            case customJson = "_custom_json"

            case teaserTag = "teaser_tag"

            case media

            case tags

            case bulkJobId = "bulk_job_id"

            case isDependent = "is_dependent"

            case returnConfig = "return_config"

            case shortDescription = "short_description"

            case productPublish = "product_publish"

            case countryOfOrigin = "country_of_origin"

            case sizes

            case uid

            case action

            case currency

            case name

            case itemCode = "item_code"

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"
        }

        public init(action: String? = nil, attributes: [String: Any], brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.noOfBoxes = noOfBoxes

            self.taxIdentifier = taxIdentifier

            self.sizeGuide = sizeGuide

            self.isSet = isSet

            self.variantMedia = variantMedia

            self.departments = departments

            self.attributes = attributes

            self.description = description

            self.multiSize = multiSize

            self.itemType = itemType

            self.variants = variants

            self.slug = slug

            self.netQuantity = netQuantity

            self.templateTag = templateTag

            self.productGroupTag = productGroupTag

            self.variantGroup = variantGroup

            self.requester = requester

            self.changeRequestId = changeRequestId

            self.trader = trader

            self.customOrder = customOrder

            self.brandUid = brandUid

            self.categorySlug = categorySlug

            self.isActive = isActive

            self.highlights = highlights

            self.customJson = customJson

            self.teaserTag = teaserTag

            self.media = media

            self.tags = tags

            self.bulkJobId = bulkJobId

            self.isDependent = isDependent

            self.returnConfig = returnConfig

            self.shortDescription = shortDescription

            self.productPublish = productPublish

            self.countryOfOrigin = countryOfOrigin

            self.sizes = sizes

            self.uid = uid

            self.action = action

            self.currency = currency

            self.name = name

            self.itemCode = itemCode

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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

            departments = try container.decode([Int].self, forKey: .departments)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                requester = try container.decode(String.self, forKey: .requester)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            currency = try container.decode(String.self, forKey: .currency)

            name = try container.decode(String.self, forKey: .name)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}