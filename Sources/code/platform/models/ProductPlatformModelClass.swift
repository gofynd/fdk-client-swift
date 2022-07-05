

import Foundation
public extension PlatformClient {
    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var isDependent: Bool?

        public var sizeGuide: String?

        public var description: String?

        public var productPublish: ProductPublished?

        public var primaryColor: String?

        public var itemCode: String?

        public var uid: Int?

        public var l3Mapping: [String]?

        public var customJson: [String: Any]?

        public var isPhysical: Bool?

        public var itemType: String?

        public var sizes: [[String: Any]]?

        public var hsnCode: String?

        public var isActive: Bool?

        public var categoryUid: Int?

        public var customOrder: [String: Any]?

        public var departments: [Int]?

        public var shortDescription: String?

        public var categorySlug: String?

        public var brandUid: Int?

        public var templateTag: String?

        public var multiSize: Bool?

        public var variants: [String: Any]?

        public var imageNature: String?

        public var isSet: Bool?

        public var color: String?

        public var highlights: [String]?

        public var media: [Media1]?

        public var name: String?

        public var moq: [String: Any]?

        public var slug: String?

        public var allSizes: [[String: Any]]?

        public var id: String?

        public var countryOfOrigin: String?

        public var currency: String?

        public var images: [Image]?

        public var isExpirable: Bool?

        public var brand: Brand?

        public enum CodingKeys: String, CodingKey {
            case isDependent = "is_dependent"

            case sizeGuide = "size_guide"

            case description

            case productPublish = "product_publish"

            case primaryColor = "primary_color"

            case itemCode = "item_code"

            case uid

            case l3Mapping = "l3_mapping"

            case customJson = "_custom_json"

            case isPhysical = "is_physical"

            case itemType = "item_type"

            case sizes

            case hsnCode = "hsn_code"

            case isActive = "is_active"

            case categoryUid = "category_uid"

            case customOrder = "custom_order"

            case departments

            case shortDescription = "short_description"

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case templateTag = "template_tag"

            case multiSize = "multi_size"

            case variants

            case imageNature = "image_nature"

            case isSet = "is_set"

            case color

            case highlights

            case media

            case name

            case moq

            case slug

            case allSizes = "all_sizes"

            case id

            case countryOfOrigin = "country_of_origin"

            case currency

            case images

            case isExpirable = "is_expirable"

            case brand
        }

        public init(allSizes: [[String: Any]]? = nil, brand: Brand? = nil, brandUid: Int? = nil, categorySlug: String? = nil, categoryUid: Int? = nil, color: String? = nil, countryOfOrigin: String? = nil, currency: String? = nil, customOrder: [String: Any]? = nil, departments: [Int]? = nil, description: String? = nil, highlights: [String]? = nil, hsnCode: String? = nil, id: String? = nil, images: [Image]? = nil, imageNature: String? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isExpirable: Bool? = nil, isPhysical: Bool? = nil, isSet: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, l3Mapping: [String]? = nil, media: [Media1]? = nil, moq: [String: Any]? = nil, multiSize: Bool? = nil, name: String? = nil, primaryColor: String? = nil, productPublish: ProductPublished? = nil, shortDescription: String? = nil, sizes: [[String: Any]]? = nil, sizeGuide: String? = nil, slug: String? = nil, templateTag: String? = nil, uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.isDependent = isDependent

            self.sizeGuide = sizeGuide

            self.description = description

            self.productPublish = productPublish

            self.primaryColor = primaryColor

            self.itemCode = itemCode

            self.uid = uid

            self.l3Mapping = l3Mapping

            self.customJson = customJson

            self.isPhysical = isPhysical

            self.itemType = itemType

            self.sizes = sizes

            self.hsnCode = hsnCode

            self.isActive = isActive

            self.categoryUid = categoryUid

            self.customOrder = customOrder

            self.departments = departments

            self.shortDescription = shortDescription

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.templateTag = templateTag

            self.multiSize = multiSize

            self.variants = variants

            self.imageNature = imageNature

            self.isSet = isSet

            self.color = color

            self.highlights = highlights

            self.media = media

            self.name = name

            self.moq = moq

            self.slug = slug

            self.allSizes = allSizes

            self.id = id

            self.countryOfOrigin = countryOfOrigin

            self.currency = currency

            self.images = images

            self.isExpirable = isExpirable

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                brandUid = try container.decode(Int.self, forKey: .brandUid)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                color = try container.decode(String.self, forKey: .color)

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
                media = try container.decode([Media1].self, forKey: .media)

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
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                images = try container.decode([Image].self, forKey: .images)

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
                brand = try container.decode(Brand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
