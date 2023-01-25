

import Foundation
public extension PlatformClient {
    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var isExpirable: Bool?

        public var slug: String?

        public var templateTag: String?

        public var isDependent: Bool?

        public var departments: [Int]?

        public var brandUid: Int?

        public var sizeGuide: String?

        public var isActive: Bool?

        public var highlights: [String]?

        public var multiSize: Bool?

        public var taxIdentifier: [String: Any]?

        public var color: String?

        public var isPhysical: Bool?

        public var itemType: String?

        public var itemCode: String?

        public var uid: Int?

        public var categoryUid: Int?

        public var images: [Image]?

        public var customJson: [String: Any]?

        public var name: String?

        public var sizes: [[String: Any]]?

        public var media: [Media1]?

        public var isSet: Bool?

        public var currency: String?

        public var categorySlug: String?

        public var allSizes: [[String: Any]]?

        public var id: String?

        public var imageNature: String?

        public var customOrder: [String: Any]?

        public var hsnCode: String?

        public var description: String?

        public var productPublish: ProductPublished?

        public var l3Mapping: [String]?

        public var variantGroup: [String: Any]?

        public var countryOfOrigin: String?

        public var variants: [String: Any]?

        public var brand: Brand?

        public var shortDescription: String?

        public var primaryColor: String?

        public enum CodingKeys: String, CodingKey {
            case isExpirable = "is_expirable"

            case slug

            case templateTag = "template_tag"

            case isDependent = "is_dependent"

            case departments

            case brandUid = "brand_uid"

            case sizeGuide = "size_guide"

            case isActive = "is_active"

            case highlights

            case multiSize = "multi_size"

            case taxIdentifier = "tax_identifier"

            case color

            case isPhysical = "is_physical"

            case itemType = "item_type"

            case itemCode = "item_code"

            case uid

            case categoryUid = "category_uid"

            case images

            case customJson = "_custom_json"

            case name

            case sizes

            case media

            case isSet = "is_set"

            case currency

            case categorySlug = "category_slug"

            case allSizes = "all_sizes"

            case id

            case imageNature = "image_nature"

            case customOrder = "custom_order"

            case hsnCode = "hsn_code"

            case description

            case productPublish = "product_publish"

            case l3Mapping = "l3_mapping"

            case variantGroup = "variant_group"

            case countryOfOrigin = "country_of_origin"

            case variants

            case brand

            case shortDescription = "short_description"

            case primaryColor = "primary_color"
        }

        public init(allSizes: [[String: Any]]? = nil, brand: Brand? = nil, brandUid: Int? = nil, categorySlug: String? = nil, categoryUid: Int? = nil, color: String? = nil, countryOfOrigin: String? = nil, currency: String? = nil, customOrder: [String: Any]? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, hsnCode: String? = nil, id: String? = nil, images: [Image]? = nil, imageNature: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isExpirable: Bool? = nil, isPhysical: Bool? = nil, isSet: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, l3Mapping: [String]? = nil, media: [Media1]? = nil, multiSize: Bool? = nil, name: String? = nil, primaryColor: String? = nil, productPublish: ProductPublished? = nil, shortDescription: String? = nil, sizes: [[String: Any]]? = nil, sizeGuide: String? = nil, slug: String? = nil, taxIdentifier: [String: Any]? = nil, templateTag: String? = nil, uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.isExpirable = isExpirable

            self.slug = slug

            self.templateTag = templateTag

            self.isDependent = isDependent

            self.departments = departments

            self.brandUid = brandUid

            self.sizeGuide = sizeGuide

            self.isActive = isActive

            self.highlights = highlights

            self.multiSize = multiSize

            self.taxIdentifier = taxIdentifier

            self.color = color

            self.isPhysical = isPhysical

            self.itemType = itemType

            self.itemCode = itemCode

            self.uid = uid

            self.categoryUid = categoryUid

            self.images = images

            self.customJson = customJson

            self.name = name

            self.sizes = sizes

            self.media = media

            self.isSet = isSet

            self.currency = currency

            self.categorySlug = categorySlug

            self.allSizes = allSizes

            self.id = id

            self.imageNature = imageNature

            self.customOrder = customOrder

            self.hsnCode = hsnCode

            self.description = description

            self.productPublish = productPublish

            self.l3Mapping = l3Mapping

            self.variantGroup = variantGroup

            self.countryOfOrigin = countryOfOrigin

            self.variants = variants

            self.brand = brand

            self.shortDescription = shortDescription

            self.primaryColor = primaryColor
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                departments = try container.decode([Int].self, forKey: .departments)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                sizes = try container.decode([[String: Any]].self, forKey: .sizes)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                categorySlug = try container.decode(String.self, forKey: .categorySlug)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                productPublish = try container.decode(ProductPublished.self, forKey: .productPublish)

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
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)
        }
    }
}
