

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductDetail
         Used By: Catalog
     */
    class ProductDetail: Codable {
        public var slug: String

        public var name: String?

        public var categories: [ProductBrand]?

        public var attributes: [String: Any]?

        public var hasVariant: Bool?

        public var ratingCount: Int?

        public var price: ProductListingPrice?

        public var brand: ProductBrand?

        public var productOnlineDate: String?

        public var itemType: String?

        public var isDependent: Bool?

        public var medias: [Media]?

        public var uid: Int?

        public var moq: ApplicationItemMOQ?

        public var color: String?

        public var discount: String?

        public var itemCode: String?

        public var action: ProductListingAction?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var teaserTag: String?

        public var rating: Double?

        public var similars: [String]?

        public var imageNature: String?

        public var highlights: [String]?

        public var seo: ApplicationItemSEO?

        public var customMeta: [CustomMetaFields]?

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var shortDescription: String?

        public var tryouts: [String]?

        public var description: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case name

            case categories

            case attributes

            case hasVariant = "has_variant"

            case ratingCount = "rating_count"

            case price

            case brand

            case productOnlineDate = "product_online_date"

            case itemType = "item_type"

            case isDependent = "is_dependent"

            case medias

            case uid

            case moq

            case color

            case discount

            case itemCode = "item_code"

            case action

            case groupedAttributes = "grouped_attributes"

            case teaserTag = "teaser_tag"

            case rating

            case similars

            case imageNature = "image_nature"

            case highlights

            case seo

            case customMeta = "_custom_meta"

            case customJson = "_custom_json"

            case tags

            case shortDescription = "short_description"

            case tryouts

            case description

            case type
        }

        public init(action: ProductListingAction? = nil, attributes: [String: Any]? = nil, brand: ProductBrand? = nil, categories: [ProductBrand]? = nil, color: String? = nil, description: String? = nil, discount: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, imageNature: String? = nil, isDependent: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, moq: ApplicationItemMOQ? = nil, name: String? = nil, price: ProductListingPrice? = nil, productOnlineDate: String? = nil, rating: Double? = nil, ratingCount: Int? = nil, seo: ApplicationItemSEO? = nil, shortDescription: String? = nil, similars: [String]? = nil, slug: String, tags: [String]? = nil, teaserTag: String? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, customMeta: [CustomMetaFields]? = nil) {
            self.slug = slug

            self.name = name

            self.categories = categories

            self.attributes = attributes

            self.hasVariant = hasVariant

            self.ratingCount = ratingCount

            self.price = price

            self.brand = brand

            self.productOnlineDate = productOnlineDate

            self.itemType = itemType

            self.isDependent = isDependent

            self.medias = medias

            self.uid = uid

            self.moq = moq

            self.color = color

            self.discount = discount

            self.itemCode = itemCode

            self.action = action

            self.groupedAttributes = groupedAttributes

            self.teaserTag = teaserTag

            self.rating = rating

            self.similars = similars

            self.imageNature = imageNature

            self.highlights = highlights

            self.seo = seo

            self.customMeta = customMeta

            self.customJson = customJson

            self.tags = tags

            self.shortDescription = shortDescription

            self.tryouts = tryouts

            self.description = description

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([ProductBrand].self, forKey: .categories)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)

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
                discount = try container.decode(String.self, forKey: .discount)

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
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

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
                similars = try container.decode([String].self, forKey: .similars)

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
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([CustomMetaFields].self, forKey: .customMeta)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
