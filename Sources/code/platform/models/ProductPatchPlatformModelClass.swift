

import Foundation
public extension PlatformClient {
    /*
         Model: ProductPatch
         Used By: Catalog
     */

    class ProductPatch: Codable {
        public var teaserTag: TeaserTag1?

        public var highlights: [String]?

        public var countryOfOrigin: String?

        public var currency: String?

        public var noOfBoxes: Int?

        public var categorySlug: String?

        public var media: [Media3]?

        public var isActive: Bool?

        public var isImageLessProduct: Bool?

        public var multiSize: Bool?

        public var bulkJobId: String?

        public var itemType: String?

        public var description: String?

        public var uid: Int?

        public var tags: [String]?

        public var productGroupTag: [String]?

        public var variantMedia: [String: Any]?

        public var trader: [Trader1]?

        public var isDependent: Bool?

        public var itemCode: [String: Any]?

        public var companyId: Int?

        public var taxIdentifier: TaxIdentifier1?

        public var isSet: Bool?

        public var brandUid: Int?

        public var shortDescription: String?

        public var customOrder: CustomOrder1?

        public var action: String?

        public var requester: String?

        public var sizeGuide: String?

        public var customJson: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var departments: [Int]?

        public var slug: String?

        public var productPublish: ProductPublish1?

        public var name: String?

        public var returnConfig: ReturnConfig1?

        public var variants: [String: Any]?

        public var netQuantity: NetQuantity?

        public var templateTag: String?

        public enum CodingKeys: String, CodingKey {
            case teaserTag = "teaser_tag"

            case highlights

            case countryOfOrigin = "country_of_origin"

            case currency

            case noOfBoxes = "no_of_boxes"

            case categorySlug = "category_slug"

            case media

            case isActive = "is_active"

            case isImageLessProduct = "is_image_less_product"

            case multiSize = "multi_size"

            case bulkJobId = "bulk_job_id"

            case itemType = "item_type"

            case description

            case uid

            case tags

            case productGroupTag = "product_group_tag"

            case variantMedia = "variant_media"

            case trader

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case companyId = "company_id"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case brandUid = "brand_uid"

            case shortDescription = "short_description"

            case customOrder = "custom_order"

            case action

            case requester

            case sizeGuide = "size_guide"

            case customJson = "_custom_json"

            case changeRequestId = "change_request_id"

            case departments

            case slug

            case productPublish = "product_publish"

            case name

            case returnConfig = "return_config"

            case variants

            case netQuantity = "net_quantity"

            case templateTag = "template_tag"
        }

        public init(action: String? = nil, brandUid: Int? = nil, bulkJobId: String? = nil, categorySlug: String? = nil, changeRequestId: [String: Any]? = nil, companyId: Int? = nil, countryOfOrigin: String? = nil, currency: String? = nil, customOrder: CustomOrder1? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any]? = nil, itemType: String? = nil, media: [Media3]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish1? = nil, requester: String? = nil, returnConfig: ReturnConfig1? = nil, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String? = nil, tags: [String]? = nil, taxIdentifier: TaxIdentifier1? = nil, teaserTag: TeaserTag1? = nil, templateTag: String? = nil, trader: [Trader1]? = nil, uid: Int? = nil, variants: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.teaserTag = teaserTag

            self.highlights = highlights

            self.countryOfOrigin = countryOfOrigin

            self.currency = currency

            self.noOfBoxes = noOfBoxes

            self.categorySlug = categorySlug

            self.media = media

            self.isActive = isActive

            self.isImageLessProduct = isImageLessProduct

            self.multiSize = multiSize

            self.bulkJobId = bulkJobId

            self.itemType = itemType

            self.description = description

            self.uid = uid

            self.tags = tags

            self.productGroupTag = productGroupTag

            self.variantMedia = variantMedia

            self.trader = trader

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.companyId = companyId

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.brandUid = brandUid

            self.shortDescription = shortDescription

            self.customOrder = customOrder

            self.action = action

            self.requester = requester

            self.sizeGuide = sizeGuide

            self.customJson = customJson

            self.changeRequestId = changeRequestId

            self.departments = departments

            self.slug = slug

            self.productPublish = productPublish

            self.name = name

            self.returnConfig = returnConfig

            self.variants = variants

            self.netQuantity = netQuantity

            self.templateTag = templateTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                teaserTag = try container.decode(TeaserTag1.self, forKey: .teaserTag)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

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
                categorySlug = try container.decode(String.self, forKey: .categorySlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media3].self, forKey: .media)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

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
                taxIdentifier = try container.decode(TaxIdentifier1.self, forKey: .taxIdentifier)

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
                brandUid = try container.decode(Int.self, forKey: .brandUid)

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
                customOrder = try container.decode(CustomOrder1.self, forKey: .customOrder)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                departments = try container.decode([Int].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish1.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
        }
    }
}
