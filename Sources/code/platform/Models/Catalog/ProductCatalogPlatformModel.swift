

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var allSizes: [[String: Any]]?

        public var categorySlug: String?

        public var isExpirable: Bool?

        public var countryOfOrigin: String?

        public var description: String?

        public var attributes: [String: Any]?

        public var returnConfig: ReturnConfigResponse?

        public var teaserTag: [String: Any]?

        public var pending: String?

        public var variantGroup: [String: Any]?

        public var allIdentifiers: [String]?

        public var productPublish: ProductPublished?

        public var categoryUid: Int?

        public var currency: String?

        public var createdBy: [String: Any]?

        public var templateTag: String?

        public var allCompanyIds: [Int]?

        public var customJson: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var moq: [String: Any]?

        public var multiSize: Bool?

        public var modifiedOn: String?

        public var verifiedOn: String?

        public var imageNature: String?

        public var shortDescription: String?

        public var variantMedia: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var sizeGuide: String?

        public var variants: [String: Any]?

        public var noOfBoxes: Int?

        public var hsnCode: String?

        public var highlights: [String]?

        public var isImageLessProduct: Bool?

        public var companyId: Int?

        public var l3Mapping: [String]?

        public var tags: [String]?

        public var netQuantity: NetQuantityResponse?

        public var media: [Media2]?

        public var createdOn: String?

        public var category: [String: Any]?

        public var stage: String?

        public var brandUid: Int?

        public var isPhysical: Bool?

        public var uid: Int?

        public var itemType: String?

        public var trader: [Trader]?

        public var verifiedBy: VerifiedBy?

        public var name: String?

        public var customOrder: [String: Any]?

        public var isActive: Bool?

        public var departments: [Int]?

        public var isDependent: Bool?

        public var sizes: [[String: Any]]?

        public var isSet: Bool?

        public var slug: String?

        public var primaryColor: String?

        public var brand: Brand?

        public var id: String?

        public var itemCode: String?

        public var color: String?

        public var productGroupTag: [String]?

        public var images: [Image]?

        public enum CodingKeys: String, CodingKey {
            case allSizes = "all_sizes"

            case categorySlug = "category_slug"

            case isExpirable = "is_expirable"

            case countryOfOrigin = "country_of_origin"

            case description

            case attributes

            case returnConfig = "return_config"

            case teaserTag = "teaser_tag"

            case pending

            case variantGroup = "variant_group"

            case allIdentifiers = "all_identifiers"

            case productPublish = "product_publish"

            case categoryUid = "category_uid"

            case currency

            case createdBy = "created_by"

            case templateTag = "template_tag"

            case allCompanyIds = "all_company_ids"

            case customJson = "_custom_json"

            case modifiedBy = "modified_by"

            case moq

            case multiSize = "multi_size"

            case modifiedOn = "modified_on"

            case verifiedOn = "verified_on"

            case imageNature = "image_nature"

            case shortDescription = "short_description"

            case variantMedia = "variant_media"

            case taxIdentifier = "tax_identifier"

            case sizeGuide = "size_guide"

            case variants

            case noOfBoxes = "no_of_boxes"

            case hsnCode = "hsn_code"

            case highlights

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"

            case l3Mapping = "l3_mapping"

            case tags

            case netQuantity = "net_quantity"

            case media

            case createdOn = "created_on"

            case category

            case stage

            case brandUid = "brand_uid"

            case isPhysical = "is_physical"

            case uid

            case itemType = "item_type"

            case trader

            case verifiedBy = "verified_by"

            case name

            case customOrder = "custom_order"

            case isActive = "is_active"

            case departments

            case isDependent = "is_dependent"

            case sizes

            case isSet = "is_set"

            case slug

            case primaryColor = "primary_color"

            case brand

            case id

            case itemCode = "item_code"

            case color

            case productGroupTag = "product_group_tag"

            case images
        }

        public init(allCompanyIds: [Int]? = nil, allIdentifiers: [String]? = nil, allSizes: [[String: Any]]? = nil, attributes: [String: Any]? = nil, brand: Brand? = nil, brandUid: Int? = nil, category: [String: Any]? = nil, categorySlug: String? = nil, categoryUid: Int? = nil, color: String? = nil, companyId: Int? = nil, countryOfOrigin: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, currency: String? = nil, customOrder: [String: Any]? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, hsnCode: String? = nil, id: String? = nil, images: [Image]? = nil, imageNature: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isExpirable: Bool? = nil, isImageLessProduct: Bool? = nil, isPhysical: Bool? = nil, isSet: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, l3Mapping: [String]? = nil, media: [Media2]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, moq: [String: Any]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantityResponse? = nil, noOfBoxes: Int? = nil, pending: String? = nil, primaryColor: String? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublished? = nil, returnConfig: ReturnConfigResponse? = nil, shortDescription: String? = nil, sizes: [[String: Any]]? = nil, sizeGuide: String? = nil, slug: String? = nil, stage: String? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, teaserTag: [String: Any]? = nil, templateTag: String? = nil, trader: [Trader]? = nil, uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, verifiedBy: VerifiedBy? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            self.allSizes = allSizes

            self.categorySlug = categorySlug

            self.isExpirable = isExpirable

            self.countryOfOrigin = countryOfOrigin

            self.description = description

            self.attributes = attributes

            self.returnConfig = returnConfig

            self.teaserTag = teaserTag

            self.pending = pending

            self.variantGroup = variantGroup

            self.allIdentifiers = allIdentifiers

            self.productPublish = productPublish

            self.categoryUid = categoryUid

            self.currency = currency

            self.createdBy = createdBy

            self.templateTag = templateTag

            self.allCompanyIds = allCompanyIds

            self.customJson = customJson

            self.modifiedBy = modifiedBy

            self.moq = moq

            self.multiSize = multiSize

            self.modifiedOn = modifiedOn

            self.verifiedOn = verifiedOn

            self.imageNature = imageNature

            self.shortDescription = shortDescription

            self.variantMedia = variantMedia

            self.taxIdentifier = taxIdentifier

            self.sizeGuide = sizeGuide

            self.variants = variants

            self.noOfBoxes = noOfBoxes

            self.hsnCode = hsnCode

            self.highlights = highlights

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId

            self.l3Mapping = l3Mapping

            self.tags = tags

            self.netQuantity = netQuantity

            self.media = media

            self.createdOn = createdOn

            self.category = category

            self.stage = stage

            self.brandUid = brandUid

            self.isPhysical = isPhysical

            self.uid = uid

            self.itemType = itemType

            self.trader = trader

            self.verifiedBy = verifiedBy

            self.name = name

            self.customOrder = customOrder

            self.isActive = isActive

            self.departments = departments

            self.isDependent = isDependent

            self.sizes = sizes

            self.isSet = isSet

            self.slug = slug

            self.primaryColor = primaryColor

            self.brand = brand

            self.id = id

            self.itemCode = itemCode

            self.color = color

            self.productGroupTag = productGroupTag

            self.images = images
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allSizes = try container.decode([[String: Any]].self, forKey: .allSizes)

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
                isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigResponse.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pending = try container.decode(String.self, forKey: .pending)

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
                allIdentifiers = try container.decode([String].self, forKey: .allIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublished.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            do {
                allCompanyIds = try container.decode([Int].self, forKey: .allCompanyIds)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                netQuantity = try container.decode(NetQuantityResponse.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media2].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode([String: Any].self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(VerifiedBy.self, forKey: .verifiedBy)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                departments = try container.decode([Int].self, forKey: .departments)

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
                sizes = try container.decode([[String: Any]].self, forKey: .sizes)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(Brand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

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
                images = try container.decode([Image].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(pending, forKey: .pending)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(allIdentifiers, forKey: .allIdentifiers)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(allCompanyIds, forKey: .allCompanyIds)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var allSizes: [[String: Any]]?

        public var categorySlug: String?

        public var isExpirable: Bool?

        public var countryOfOrigin: String?

        public var description: String?

        public var attributes: [String: Any]?

        public var returnConfig: ReturnConfigResponse?

        public var teaserTag: [String: Any]?

        public var pending: String?

        public var variantGroup: [String: Any]?

        public var allIdentifiers: [String]?

        public var productPublish: ProductPublished?

        public var categoryUid: Int?

        public var currency: String?

        public var createdBy: [String: Any]?

        public var templateTag: String?

        public var allCompanyIds: [Int]?

        public var customJson: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var moq: [String: Any]?

        public var multiSize: Bool?

        public var modifiedOn: String?

        public var verifiedOn: String?

        public var imageNature: String?

        public var shortDescription: String?

        public var variantMedia: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var sizeGuide: String?

        public var variants: [String: Any]?

        public var noOfBoxes: Int?

        public var hsnCode: String?

        public var highlights: [String]?

        public var isImageLessProduct: Bool?

        public var companyId: Int?

        public var l3Mapping: [String]?

        public var tags: [String]?

        public var netQuantity: NetQuantityResponse?

        public var media: [Media2]?

        public var createdOn: String?

        public var category: [String: Any]?

        public var stage: String?

        public var brandUid: Int?

        public var isPhysical: Bool?

        public var uid: Int?

        public var itemType: String?

        public var trader: [Trader]?

        public var verifiedBy: VerifiedBy?

        public var name: String?

        public var customOrder: [String: Any]?

        public var isActive: Bool?

        public var departments: [Int]?

        public var isDependent: Bool?

        public var sizes: [[String: Any]]?

        public var isSet: Bool?

        public var slug: String?

        public var primaryColor: String?

        public var brand: Brand?

        public var id: String?

        public var itemCode: String?

        public var color: String?

        public var productGroupTag: [String]?

        public var images: [Image]?

        public enum CodingKeys: String, CodingKey {
            case allSizes = "all_sizes"

            case categorySlug = "category_slug"

            case isExpirable = "is_expirable"

            case countryOfOrigin = "country_of_origin"

            case description

            case attributes

            case returnConfig = "return_config"

            case teaserTag = "teaser_tag"

            case pending

            case variantGroup = "variant_group"

            case allIdentifiers = "all_identifiers"

            case productPublish = "product_publish"

            case categoryUid = "category_uid"

            case currency

            case createdBy = "created_by"

            case templateTag = "template_tag"

            case allCompanyIds = "all_company_ids"

            case customJson = "_custom_json"

            case modifiedBy = "modified_by"

            case moq

            case multiSize = "multi_size"

            case modifiedOn = "modified_on"

            case verifiedOn = "verified_on"

            case imageNature = "image_nature"

            case shortDescription = "short_description"

            case variantMedia = "variant_media"

            case taxIdentifier = "tax_identifier"

            case sizeGuide = "size_guide"

            case variants

            case noOfBoxes = "no_of_boxes"

            case hsnCode = "hsn_code"

            case highlights

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"

            case l3Mapping = "l3_mapping"

            case tags

            case netQuantity = "net_quantity"

            case media

            case createdOn = "created_on"

            case category

            case stage

            case brandUid = "brand_uid"

            case isPhysical = "is_physical"

            case uid

            case itemType = "item_type"

            case trader

            case verifiedBy = "verified_by"

            case name

            case customOrder = "custom_order"

            case isActive = "is_active"

            case departments

            case isDependent = "is_dependent"

            case sizes

            case isSet = "is_set"

            case slug

            case primaryColor = "primary_color"

            case brand

            case id

            case itemCode = "item_code"

            case color

            case productGroupTag = "product_group_tag"

            case images
        }

        public init(allCompanyIds: [Int]? = nil, allIdentifiers: [String]? = nil, allSizes: [[String: Any]]? = nil, attributes: [String: Any]? = nil, brand: Brand? = nil, brandUid: Int? = nil, category: [String: Any]? = nil, categorySlug: String? = nil, categoryUid: Int? = nil, color: String? = nil, companyId: Int? = nil, countryOfOrigin: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, currency: String? = nil, customOrder: [String: Any]? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, hsnCode: String? = nil, id: String? = nil, images: [Image]? = nil, imageNature: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isExpirable: Bool? = nil, isImageLessProduct: Bool? = nil, isPhysical: Bool? = nil, isSet: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, l3Mapping: [String]? = nil, media: [Media2]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, moq: [String: Any]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantityResponse? = nil, noOfBoxes: Int? = nil, pending: String? = nil, primaryColor: String? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublished? = nil, returnConfig: ReturnConfigResponse? = nil, shortDescription: String? = nil, sizes: [[String: Any]]? = nil, sizeGuide: String? = nil, slug: String? = nil, stage: String? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, teaserTag: [String: Any]? = nil, templateTag: String? = nil, trader: [Trader]? = nil, uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, verifiedBy: VerifiedBy? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            self.allSizes = allSizes

            self.categorySlug = categorySlug

            self.isExpirable = isExpirable

            self.countryOfOrigin = countryOfOrigin

            self.description = description

            self.attributes = attributes

            self.returnConfig = returnConfig

            self.teaserTag = teaserTag

            self.pending = pending

            self.variantGroup = variantGroup

            self.allIdentifiers = allIdentifiers

            self.productPublish = productPublish

            self.categoryUid = categoryUid

            self.currency = currency

            self.createdBy = createdBy

            self.templateTag = templateTag

            self.allCompanyIds = allCompanyIds

            self.customJson = customJson

            self.modifiedBy = modifiedBy

            self.moq = moq

            self.multiSize = multiSize

            self.modifiedOn = modifiedOn

            self.verifiedOn = verifiedOn

            self.imageNature = imageNature

            self.shortDescription = shortDescription

            self.variantMedia = variantMedia

            self.taxIdentifier = taxIdentifier

            self.sizeGuide = sizeGuide

            self.variants = variants

            self.noOfBoxes = noOfBoxes

            self.hsnCode = hsnCode

            self.highlights = highlights

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId

            self.l3Mapping = l3Mapping

            self.tags = tags

            self.netQuantity = netQuantity

            self.media = media

            self.createdOn = createdOn

            self.category = category

            self.stage = stage

            self.brandUid = brandUid

            self.isPhysical = isPhysical

            self.uid = uid

            self.itemType = itemType

            self.trader = trader

            self.verifiedBy = verifiedBy

            self.name = name

            self.customOrder = customOrder

            self.isActive = isActive

            self.departments = departments

            self.isDependent = isDependent

            self.sizes = sizes

            self.isSet = isSet

            self.slug = slug

            self.primaryColor = primaryColor

            self.brand = brand

            self.id = id

            self.itemCode = itemCode

            self.color = color

            self.productGroupTag = productGroupTag

            self.images = images
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allSizes = try container.decode([[String: Any]].self, forKey: .allSizes)

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
                isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigResponse.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pending = try container.decode(String.self, forKey: .pending)

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
                allIdentifiers = try container.decode([String].self, forKey: .allIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublished.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            do {
                allCompanyIds = try container.decode([Int].self, forKey: .allCompanyIds)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                netQuantity = try container.decode(NetQuantityResponse.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media2].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode([String: Any].self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(VerifiedBy.self, forKey: .verifiedBy)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                departments = try container.decode([Int].self, forKey: .departments)

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
                sizes = try container.decode([[String: Any]].self, forKey: .sizes)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(Brand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

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
                images = try container.decode([Image].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(pending, forKey: .pending)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(allIdentifiers, forKey: .allIdentifiers)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(allCompanyIds, forKey: .allCompanyIds)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }
}
