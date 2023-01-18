

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var itemCode: [String: Any]

        public var multiSize: Bool?

        public var description: String?

        public var shortDescription: String?

        public var slug: String

        public var noOfBoxes: Int?

        public var currency: String

        public var trader: [Trader]

        public var variants: [String: Any]?

        public var customJson: [String: Any]?

        public var itemType: String

        public var countryOfOrigin: String

        public var sizeGuide: String?

        public var name: [String: Any]

        public var uid: Int?

        public var productGroupTag: [String]?

        public var changeRequestId: [String: Any]?

        public var departments: [Int]

        public var companyId: Int

        public var action: String?

        public var isActive: Bool?

        public var productPublish: ProductPublish?

        public var media: [Media1]?

        public var highlights: [String]?

        public var returnConfig: ReturnConfig

        public var bulkJobId: String?

        public var variantsGroup: [String: Any]?

        public var brandUid: Int

        public var isDependent: Bool?

        public var teaserTag: TeaserTag?

        public var templateTag: String

        public var customOrder: CustomOrder?

        public var netQuantity: NetQuantity?

        public var categorySlug: String

        public var isSet: Bool?

        public var tags: [String]?

        public var variantMedia: [String: Any]?

        public var isImageLessProduct: Bool?

        public var taxIdentifier: TaxIdentifier

        public var requester: String?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case multiSize = "multi_size"

            case description

            case shortDescription = "short_description"

            case slug

            case noOfBoxes = "no_of_boxes"

            case currency

            case trader

            case variants

            case customJson = "_custom_json"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case sizeGuide = "size_guide"

            case name

            case uid

            case productGroupTag = "product_group_tag"

            case changeRequestId = "change_request_id"

            case departments

            case companyId = "company_id"

            case action

            case isActive = "is_active"

            case productPublish = "product_publish"

            case media

            case highlights

            case returnConfig = "return_config"

            case bulkJobId = "bulk_job_id"

            case variantsGroup = "variants_group"

            case brandUid = "brand_uid"

            case isDependent = "is_dependent"

            case teaserTag = "teaser_tag"

            case templateTag = "template_tag"

            case customOrder = "custom_order"

            case netQuantity = "net_quantity"

            case categorySlug = "category_slug"

            case isSet = "is_set"

            case tags

            case variantMedia = "variant_media"

            case isImageLessProduct = "is_image_less_product"

            case taxIdentifier = "tax_identifier"

            case requester
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantsGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.itemCode = itemCode

            self.multiSize = multiSize

            self.description = description

            self.shortDescription = shortDescription

            self.slug = slug

            self.noOfBoxes = noOfBoxes

            self.currency = currency

            self.trader = trader

            self.variants = variants

            self.customJson = customJson

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.sizeGuide = sizeGuide

            self.name = name

            self.uid = uid

            self.productGroupTag = productGroupTag

            self.changeRequestId = changeRequestId

            self.departments = departments

            self.companyId = companyId

            self.action = action

            self.isActive = isActive

            self.productPublish = productPublish

            self.media = media

            self.highlights = highlights

            self.returnConfig = returnConfig

            self.bulkJobId = bulkJobId

            self.variantsGroup = variantsGroup

            self.brandUid = brandUid

            self.isDependent = isDependent

            self.teaserTag = teaserTag

            self.templateTag = templateTag

            self.customOrder = customOrder

            self.netQuantity = netQuantity

            self.categorySlug = categorySlug

            self.isSet = isSet

            self.tags = tags

            self.variantMedia = variantMedia

            self.isImageLessProduct = isImageLessProduct

            self.taxIdentifier = taxIdentifier

            self.requester = requester
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                action = try container.decode(String.self, forKey: .action)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(media, forKey: .media)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(variantsGroup, forKey: .variantsGroup)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(requester, forKey: .requester)
        }
    }
}
