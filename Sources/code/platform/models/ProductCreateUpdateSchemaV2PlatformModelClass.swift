

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var isSet: Bool?

        public var taxIdentifier: TaxIdentifier

        public var noOfBoxes: Int?

        public var description: String?

        public var productPublish: ProductPublish?

        public var customJson: [String: Any]?

        public var bulkJobId: String?

        public var attributes: [String: Any]

        public var companyId: Int

        public var sizeGuide: String?

        public var highlights: [String]?

        public var action: String?

        public var sizes: [[String: Any]]

        public var slug: String

        public var media: [Media1]?

        public var currency: String

        public var netQuantity: NetQuantity?

        public var itemType: String

        public var shortDescription: String?

        public var teaserTag: TeaserTag?

        public var isActive: Bool?

        public var multiSize: Bool?

        public var variantMedia: [String: Any]?

        public var name: String

        public var requester: String?

        public var changeRequestId: [String: Any]?

        public var returnConfig: ReturnConfig

        public var variants: [String: Any]?

        public var isDependent: Bool?

        public var isImageLessProduct: Bool?

        public var categorySlug: String

        public var tags: [String]?

        public var productGroupTag: [String]?

        public var itemCode: String

        public var brandUid: Int

        public var templateTag: String

        public var uid: Int?

        public var countryOfOrigin: String

        public var variantGroup: [String: Any]?

        public var trader: [Trader]

        public var customOrder: CustomOrder?

        public var departments: [Int]

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case taxIdentifier = "tax_identifier"

            case noOfBoxes = "no_of_boxes"

            case description

            case productPublish = "product_publish"

            case customJson = "_custom_json"

            case bulkJobId = "bulk_job_id"

            case attributes

            case companyId = "company_id"

            case sizeGuide = "size_guide"

            case highlights

            case action

            case sizes

            case slug

            case media

            case currency

            case netQuantity = "net_quantity"

            case itemType = "item_type"

            case shortDescription = "short_description"

            case teaserTag = "teaser_tag"

            case isActive = "is_active"

            case multiSize = "multi_size"

            case variantMedia = "variant_media"

            case name

            case requester

            case changeRequestId = "change_request_id"

            case returnConfig = "return_config"

            case variants

            case isDependent = "is_dependent"

            case isImageLessProduct = "is_image_less_product"

            case categorySlug = "category_slug"

            case tags

            case productGroupTag = "product_group_tag"

            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case templateTag = "template_tag"

            case uid

            case countryOfOrigin = "country_of_origin"

            case variantGroup = "variant_group"

            case trader

            case customOrder = "custom_order"

            case departments
        }

        public init(action: String? = nil, attributes: [String: Any], brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.isSet = isSet

            self.taxIdentifier = taxIdentifier

            self.noOfBoxes = noOfBoxes

            self.description = description

            self.productPublish = productPublish

            self.customJson = customJson

            self.bulkJobId = bulkJobId

            self.attributes = attributes

            self.companyId = companyId

            self.sizeGuide = sizeGuide

            self.highlights = highlights

            self.action = action

            self.sizes = sizes

            self.slug = slug

            self.media = media

            self.currency = currency

            self.netQuantity = netQuantity

            self.itemType = itemType

            self.shortDescription = shortDescription

            self.teaserTag = teaserTag

            self.isActive = isActive

            self.multiSize = multiSize

            self.variantMedia = variantMedia

            self.name = name

            self.requester = requester

            self.changeRequestId = changeRequestId

            self.returnConfig = returnConfig

            self.variants = variants

            self.isDependent = isDependent

            self.isImageLessProduct = isImageLessProduct

            self.categorySlug = categorySlug

            self.tags = tags

            self.productGroupTag = productGroupTag

            self.itemCode = itemCode

            self.brandUid = brandUid

            self.templateTag = templateTag

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.variantGroup = variantGroup

            self.trader = trader

            self.customOrder = customOrder

            self.departments = departments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

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

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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

            departments = try container.decode([Int].self, forKey: .departments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(departments, forKey: .departments)
        }
    }
}