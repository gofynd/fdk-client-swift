

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductDetail
         Used By: Catalog
     */
    class ProductDetail: Codable {
        public var categories: [ProductBrand]?

        public var price: ProductListingPrice?

        public var type: String?

        public var teaserTag: String?

        public var ratingCount: Int?

        public var productOnlineDate: String?

        public var highlights: [String]?

        public var rating: Double?

        public var tryouts: [String]?

        public var description: String?

        public var attributes: [String: Any]?

        public var discount: String?

        public var customJson: [String: Any]?

        public var customMeta: [MetaFields]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var action: ProductListingAction?

        public var slug: String

        public var itemType: String?

        public var name: String?

        public var uid: Int?

        public var color: String?

        public var imageNature: String?

        public var brand: ProductBrand?

        public var shortDescription: String?

        public var hasVariant: Bool?

        public var medias: [Media]?

        public var itemCode: String?

        public var similars: [String]?

        public enum CodingKeys: String, CodingKey {
            case categories

            case price

            case type

            case teaserTag = "teaser_tag"

            case ratingCount = "rating_count"

            case productOnlineDate = "product_online_date"

            case highlights

            case rating

            case tryouts

            case description

            case attributes

            case discount

            case customJson = "_custom_json"

            case customMeta = "_custom_meta"

            case groupedAttributes = "grouped_attributes"

            case action

            case slug

            case itemType = "item_type"

            case name

            case uid

            case color

            case imageNature = "image_nature"

            case brand

            case shortDescription = "short_description"

            case hasVariant = "has_variant"

            case medias

            case itemCode = "item_code"

            case similars
        }

        public init(action: ProductListingAction? = nil, attributes: [String: Any]? = nil, brand: ProductBrand? = nil, categories: [ProductBrand]? = nil, color: String? = nil, description: String? = nil, discount: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, imageNature: String? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, name: String? = nil, price: ProductListingPrice? = nil, productOnlineDate: String? = nil, rating: Double? = nil, ratingCount: Int? = nil, shortDescription: String? = nil, similars: [String]? = nil, slug: String, teaserTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, customMeta: [MetaFields]? = nil) {
            self.categories = categories

            self.price = price

            self.type = type

            self.teaserTag = teaserTag

            self.ratingCount = ratingCount

            self.productOnlineDate = productOnlineDate

            self.highlights = highlights

            self.rating = rating

            self.tryouts = tryouts

            self.description = description

            self.attributes = attributes

            self.discount = discount

            self.customJson = customJson

            self.customMeta = customMeta

            self.groupedAttributes = groupedAttributes

            self.action = action

            self.slug = slug

            self.itemType = itemType

            self.name = name

            self.uid = uid

            self.color = color

            self.imageNature = imageNature

            self.brand = brand

            self.shortDescription = shortDescription

            self.hasVariant = hasVariant

            self.medias = medias

            self.itemCode = itemCode

            self.similars = similars
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categories = try container.decode([ProductBrand].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                discount = try container.decode(String.self, forKey: .discount)

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
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media].self, forKey: .medias)

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
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(similars, forKey: .similars)
        }
    }
}
