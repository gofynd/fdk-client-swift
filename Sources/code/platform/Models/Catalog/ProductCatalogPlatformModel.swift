

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var description: String?

        public var returnConfig: ReturnConfigResponse?

        public var attributes: [String: Any]?

        public var productPublish: ProductPublished?

        public var color: String?

        public var brand: Brand?

        public var allIdentifiers: [String]?

        public var tags: [String]?

        public var countryOfOrigin: String?

        public var shortDescription: String?

        public var templateTag: String?

        public var createdBy: [String: Any]?

        public var netQuantity: NetQuantityResponse?

        public var uid: Int?

        public var allSizes: [[String: Any]]?

        public var id: String?

        public var pending: String?

        public var moq: [String: Any]?

        public var primaryColor: String?

        public var companyId: Int?

        public var isPhysical: Bool?

        public var sizeGuide: String?

        public var currency: String?

        public var trader: [Trader]?

        public var slug: String?

        public var teaserTag: [String: Any]?

        public var noOfBoxes: Int?

        public var categoryUid: Int?

        public var taxIdentifier: [String: Any]?

        public var createdOn: String?

        public var itemType: String?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var variantGroup: [String: Any]?

        public var category: [String: Any]?

        public var allCompanyIds: [Int]?

        public var stage: String?

        public var modifiedOn: String?

        public var verifiedOn: String?

        public var variantMedia: [String: Any]?

        public var sizes: [[String: Any]]?

        public var hsnCode: String?

        public var highlights: [String]?

        public var imageNature: String?

        public var isDependent: Bool?

        public var customOrder: [String: Any]?

        public var brandUid: Int?

        public var images: [Image]?

        public var productGroupTag: [String]?

        public var name: String?

        public var categorySlug: String?

        public var isExpirable: Bool?

        public var l3Mapping: [String]?

        public var multiSize: Bool?

        public var isActive: Bool?

        public var isImageLessProduct: Bool?

        public var verifiedBy: VerifiedBy?

        public var media: [Media2]?

        public var itemCode: String?

        public var departments: [Int]?

        public var modifiedBy: [String: Any]?

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case description

            case returnConfig = "return_config"

            case attributes

            case productPublish = "product_publish"

            case color

            case brand

            case allIdentifiers = "all_identifiers"

            case tags

            case countryOfOrigin = "country_of_origin"

            case shortDescription = "short_description"

            case templateTag = "template_tag"

            case createdBy = "created_by"

            case netQuantity = "net_quantity"

            case uid

            case allSizes = "all_sizes"

            case id

            case pending

            case moq

            case primaryColor = "primary_color"

            case companyId = "company_id"

            case isPhysical = "is_physical"

            case sizeGuide = "size_guide"

            case currency

            case trader

            case slug

            case teaserTag = "teaser_tag"

            case noOfBoxes = "no_of_boxes"

            case categoryUid = "category_uid"

            case taxIdentifier = "tax_identifier"

            case createdOn = "created_on"

            case itemType = "item_type"

            case customJson = "_custom_json"

            case isSet = "is_set"

            case variantGroup = "variant_group"

            case category

            case allCompanyIds = "all_company_ids"

            case stage

            case modifiedOn = "modified_on"

            case verifiedOn = "verified_on"

            case variantMedia = "variant_media"

            case sizes

            case hsnCode = "hsn_code"

            case highlights

            case imageNature = "image_nature"

            case isDependent = "is_dependent"

            case customOrder = "custom_order"

            case brandUid = "brand_uid"

            case images

            case productGroupTag = "product_group_tag"

            case name

            case categorySlug = "category_slug"

            case isExpirable = "is_expirable"

            case l3Mapping = "l3_mapping"

            case multiSize = "multi_size"

            case isActive = "is_active"

            case isImageLessProduct = "is_image_less_product"

            case verifiedBy = "verified_by"

            case media

            case itemCode = "item_code"

            case departments

            case modifiedBy = "modified_by"

            case variants
        }

        public init(allCompanyIds: [Int]? = nil, allIdentifiers: [String]? = nil, allSizes: [[String: Any]]? = nil, attributes: [String: Any]? = nil, brand: Brand? = nil, brandUid: Int? = nil, category: [String: Any]? = nil, categorySlug: String? = nil, categoryUid: Int? = nil, color: String? = nil, companyId: Int? = nil, countryOfOrigin: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, currency: String? = nil, customOrder: [String: Any]? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, hsnCode: String? = nil, id: String? = nil, images: [Image]? = nil, imageNature: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isExpirable: Bool? = nil, isImageLessProduct: Bool? = nil, isPhysical: Bool? = nil, isSet: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, l3Mapping: [String]? = nil, media: [Media2]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, moq: [String: Any]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantityResponse? = nil, noOfBoxes: Int? = nil, pending: String? = nil, primaryColor: String? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublished? = nil, returnConfig: ReturnConfigResponse? = nil, shortDescription: String? = nil, sizes: [[String: Any]]? = nil, sizeGuide: String? = nil, slug: String? = nil, stage: String? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, teaserTag: [String: Any]? = nil, templateTag: String? = nil, trader: [Trader]? = nil, uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, verifiedBy: VerifiedBy? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            self.description = description

            self.returnConfig = returnConfig

            self.attributes = attributes

            self.productPublish = productPublish

            self.color = color

            self.brand = brand

            self.allIdentifiers = allIdentifiers

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.shortDescription = shortDescription

            self.templateTag = templateTag

            self.createdBy = createdBy

            self.netQuantity = netQuantity

            self.uid = uid

            self.allSizes = allSizes

            self.id = id

            self.pending = pending

            self.moq = moq

            self.primaryColor = primaryColor

            self.companyId = companyId

            self.isPhysical = isPhysical

            self.sizeGuide = sizeGuide

            self.currency = currency

            self.trader = trader

            self.slug = slug

            self.teaserTag = teaserTag

            self.noOfBoxes = noOfBoxes

            self.categoryUid = categoryUid

            self.taxIdentifier = taxIdentifier

            self.createdOn = createdOn

            self.itemType = itemType

            self.customJson = customJson

            self.isSet = isSet

            self.variantGroup = variantGroup

            self.category = category

            self.allCompanyIds = allCompanyIds

            self.stage = stage

            self.modifiedOn = modifiedOn

            self.verifiedOn = verifiedOn

            self.variantMedia = variantMedia

            self.sizes = sizes

            self.hsnCode = hsnCode

            self.highlights = highlights

            self.imageNature = imageNature

            self.isDependent = isDependent

            self.customOrder = customOrder

            self.brandUid = brandUid

            self.images = images

            self.productGroupTag = productGroupTag

            self.name = name

            self.categorySlug = categorySlug

            self.isExpirable = isExpirable

            self.l3Mapping = l3Mapping

            self.multiSize = multiSize

            self.isActive = isActive

            self.isImageLessProduct = isImageLessProduct

            self.verifiedBy = verifiedBy

            self.media = media

            self.itemCode = itemCode

            self.departments = departments

            self.modifiedBy = modifiedBy

            self.variants = variants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
                color = try container.decode(String.self, forKey: .color)

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
                allIdentifiers = try container.decode([String].self, forKey: .allIdentifiers)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                netQuantity = try container.decode(NetQuantityResponse.self, forKey: .netQuantity)

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
                allSizes = try container.decode([[String: Any]].self, forKey: .allSizes)

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
                pending = try container.decode(String.self, forKey: .pending)

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
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                currency = try container.decode(String.self, forKey: .currency)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                category = try container.decode([String: Any].self, forKey: .category)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                images = try container.decode([Image].self, forKey: .images)

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
                name = try container.decode(String.self, forKey: .name)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                verifiedBy = try container.decode(VerifiedBy.self, forKey: .verifiedBy)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(allIdentifiers, forKey: .allIdentifiers)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pending, forKey: .pending)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(allCompanyIds, forKey: .allCompanyIds)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var description: String?

        public var returnConfig: ReturnConfigResponse?

        public var attributes: [String: Any]?

        public var productPublish: ProductPublished?

        public var color: String?

        public var brand: Brand?

        public var allIdentifiers: [String]?

        public var tags: [String]?

        public var countryOfOrigin: String?

        public var shortDescription: String?

        public var templateTag: String?

        public var createdBy: [String: Any]?

        public var netQuantity: NetQuantityResponse?

        public var uid: Int?

        public var allSizes: [[String: Any]]?

        public var id: String?

        public var pending: String?

        public var moq: [String: Any]?

        public var primaryColor: String?

        public var companyId: Int?

        public var isPhysical: Bool?

        public var sizeGuide: String?

        public var currency: String?

        public var trader: [Trader]?

        public var slug: String?

        public var teaserTag: [String: Any]?

        public var noOfBoxes: Int?

        public var categoryUid: Int?

        public var taxIdentifier: [String: Any]?

        public var createdOn: String?

        public var itemType: String?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var variantGroup: [String: Any]?

        public var category: [String: Any]?

        public var allCompanyIds: [Int]?

        public var stage: String?

        public var modifiedOn: String?

        public var verifiedOn: String?

        public var variantMedia: [String: Any]?

        public var sizes: [[String: Any]]?

        public var hsnCode: String?

        public var highlights: [String]?

        public var imageNature: String?

        public var isDependent: Bool?

        public var customOrder: [String: Any]?

        public var brandUid: Int?

        public var images: [Image]?

        public var productGroupTag: [String]?

        public var name: String?

        public var categorySlug: String?

        public var isExpirable: Bool?

        public var l3Mapping: [String]?

        public var multiSize: Bool?

        public var isActive: Bool?

        public var isImageLessProduct: Bool?

        public var verifiedBy: VerifiedBy?

        public var media: [Media2]?

        public var itemCode: String?

        public var departments: [Int]?

        public var modifiedBy: [String: Any]?

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case description

            case returnConfig = "return_config"

            case attributes

            case productPublish = "product_publish"

            case color

            case brand

            case allIdentifiers = "all_identifiers"

            case tags

            case countryOfOrigin = "country_of_origin"

            case shortDescription = "short_description"

            case templateTag = "template_tag"

            case createdBy = "created_by"

            case netQuantity = "net_quantity"

            case uid

            case allSizes = "all_sizes"

            case id

            case pending

            case moq

            case primaryColor = "primary_color"

            case companyId = "company_id"

            case isPhysical = "is_physical"

            case sizeGuide = "size_guide"

            case currency

            case trader

            case slug

            case teaserTag = "teaser_tag"

            case noOfBoxes = "no_of_boxes"

            case categoryUid = "category_uid"

            case taxIdentifier = "tax_identifier"

            case createdOn = "created_on"

            case itemType = "item_type"

            case customJson = "_custom_json"

            case isSet = "is_set"

            case variantGroup = "variant_group"

            case category

            case allCompanyIds = "all_company_ids"

            case stage

            case modifiedOn = "modified_on"

            case verifiedOn = "verified_on"

            case variantMedia = "variant_media"

            case sizes

            case hsnCode = "hsn_code"

            case highlights

            case imageNature = "image_nature"

            case isDependent = "is_dependent"

            case customOrder = "custom_order"

            case brandUid = "brand_uid"

            case images

            case productGroupTag = "product_group_tag"

            case name

            case categorySlug = "category_slug"

            case isExpirable = "is_expirable"

            case l3Mapping = "l3_mapping"

            case multiSize = "multi_size"

            case isActive = "is_active"

            case isImageLessProduct = "is_image_less_product"

            case verifiedBy = "verified_by"

            case media

            case itemCode = "item_code"

            case departments

            case modifiedBy = "modified_by"

            case variants
        }

        public init(allCompanyIds: [Int]? = nil, allIdentifiers: [String]? = nil, allSizes: [[String: Any]]? = nil, attributes: [String: Any]? = nil, brand: Brand? = nil, brandUid: Int? = nil, category: [String: Any]? = nil, categorySlug: String? = nil, categoryUid: Int? = nil, color: String? = nil, companyId: Int? = nil, countryOfOrigin: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, currency: String? = nil, customOrder: [String: Any]? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, hsnCode: String? = nil, id: String? = nil, images: [Image]? = nil, imageNature: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isExpirable: Bool? = nil, isImageLessProduct: Bool? = nil, isPhysical: Bool? = nil, isSet: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, l3Mapping: [String]? = nil, media: [Media2]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, moq: [String: Any]? = nil, multiSize: Bool? = nil, name: String? = nil, netQuantity: NetQuantityResponse? = nil, noOfBoxes: Int? = nil, pending: String? = nil, primaryColor: String? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublished? = nil, returnConfig: ReturnConfigResponse? = nil, shortDescription: String? = nil, sizes: [[String: Any]]? = nil, sizeGuide: String? = nil, slug: String? = nil, stage: String? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, teaserTag: [String: Any]? = nil, templateTag: String? = nil, trader: [Trader]? = nil, uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, verifiedBy: VerifiedBy? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            self.description = description

            self.returnConfig = returnConfig

            self.attributes = attributes

            self.productPublish = productPublish

            self.color = color

            self.brand = brand

            self.allIdentifiers = allIdentifiers

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.shortDescription = shortDescription

            self.templateTag = templateTag

            self.createdBy = createdBy

            self.netQuantity = netQuantity

            self.uid = uid

            self.allSizes = allSizes

            self.id = id

            self.pending = pending

            self.moq = moq

            self.primaryColor = primaryColor

            self.companyId = companyId

            self.isPhysical = isPhysical

            self.sizeGuide = sizeGuide

            self.currency = currency

            self.trader = trader

            self.slug = slug

            self.teaserTag = teaserTag

            self.noOfBoxes = noOfBoxes

            self.categoryUid = categoryUid

            self.taxIdentifier = taxIdentifier

            self.createdOn = createdOn

            self.itemType = itemType

            self.customJson = customJson

            self.isSet = isSet

            self.variantGroup = variantGroup

            self.category = category

            self.allCompanyIds = allCompanyIds

            self.stage = stage

            self.modifiedOn = modifiedOn

            self.verifiedOn = verifiedOn

            self.variantMedia = variantMedia

            self.sizes = sizes

            self.hsnCode = hsnCode

            self.highlights = highlights

            self.imageNature = imageNature

            self.isDependent = isDependent

            self.customOrder = customOrder

            self.brandUid = brandUid

            self.images = images

            self.productGroupTag = productGroupTag

            self.name = name

            self.categorySlug = categorySlug

            self.isExpirable = isExpirable

            self.l3Mapping = l3Mapping

            self.multiSize = multiSize

            self.isActive = isActive

            self.isImageLessProduct = isImageLessProduct

            self.verifiedBy = verifiedBy

            self.media = media

            self.itemCode = itemCode

            self.departments = departments

            self.modifiedBy = modifiedBy

            self.variants = variants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
                color = try container.decode(String.self, forKey: .color)

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
                allIdentifiers = try container.decode([String].self, forKey: .allIdentifiers)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                netQuantity = try container.decode(NetQuantityResponse.self, forKey: .netQuantity)

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
                allSizes = try container.decode([[String: Any]].self, forKey: .allSizes)

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
                pending = try container.decode(String.self, forKey: .pending)

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
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                currency = try container.decode(String.self, forKey: .currency)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                category = try container.decode([String: Any].self, forKey: .category)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                images = try container.decode([Image].self, forKey: .images)

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
                name = try container.decode(String.self, forKey: .name)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                verifiedBy = try container.decode(VerifiedBy.self, forKey: .verifiedBy)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(allIdentifiers, forKey: .allIdentifiers)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pending, forKey: .pending)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(allCompanyIds, forKey: .allCompanyIds)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }
}
