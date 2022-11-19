

import Foundation
public extension PlatformClient {
    /*
         Model: ProductDetail
         Used By: Catalog
     */

    class ProductDetail: Codable {
        public var similars: [String]?

        public var description: String?

        public var imageNature: String?

        public var promoMeta: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var ratingCount: Int?

        public var productOnlineDate: String?

        public var color: String?

        public var shortDescription: String?

        public var uid: Int?

        public var medias: [Media1]?

        public var itemCode: String?

        public var brand: ProductBrand?

        public var name: String?

        public var highlights: [String]?

        public var rating: Double?

        public var hasVariant: Bool?

        public var tryouts: [String]?

        public var slug: String

        public var type: String?

        public var teaserTag: [String: Any]?

        public var attributes: [String: Any]?

        public var itemType: String?

        public enum CodingKeys: String, CodingKey {
            case similars

            case description

            case imageNature = "image_nature"

            case promoMeta = "promo_meta"

            case groupedAttributes = "grouped_attributes"

            case ratingCount = "rating_count"

            case productOnlineDate = "product_online_date"

            case color

            case shortDescription = "short_description"

            case uid

            case medias

            case itemCode = "item_code"

            case brand

            case name

            case highlights

            case rating

            case hasVariant = "has_variant"

            case tryouts

            case slug

            case type

            case teaserTag = "teaser_tag"

            case attributes

            case itemType = "item_type"
        }

        public init(attributes: [String: Any]? = nil, brand: ProductBrand? = nil, color: String? = nil, description: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, imageNature: String? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media1]? = nil, name: String? = nil, productOnlineDate: String? = nil, promoMeta: [String: Any]? = nil, rating: Double? = nil, ratingCount: Int? = nil, shortDescription: String? = nil, similars: [String]? = nil, slug: String, teaserTag: [String: Any]? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil) {
            self.similars = similars

            self.description = description

            self.imageNature = imageNature

            self.promoMeta = promoMeta

            self.groupedAttributes = groupedAttributes

            self.ratingCount = ratingCount

            self.productOnlineDate = productOnlineDate

            self.color = color

            self.shortDescription = shortDescription

            self.uid = uid

            self.medias = medias

            self.itemCode = itemCode

            self.brand = brand

            self.name = name

            self.highlights = highlights

            self.rating = rating

            self.hasVariant = hasVariant

            self.tryouts = tryouts

            self.slug = slug

            self.type = type

            self.teaserTag = teaserTag

            self.attributes = attributes

            self.itemType = itemType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                similars = try container.decode([String].self, forKey: .similars)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

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
                color = try container.decode(String.self, forKey: .color)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media1].self, forKey: .medias)

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
                brand = try container.decode(ProductBrand.self, forKey: .brand)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                type = try container.decode(String.self, forKey: .type)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(itemType, forKey: .itemType)
        }
    }
}
