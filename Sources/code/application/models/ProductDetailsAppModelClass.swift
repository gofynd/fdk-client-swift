

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductDetails
         Used By: Catalog
     */
    class ProductDetails: Codable {
        public var images: [[String: Any]]?

        public var slug: [String: Any]?

        public var templateTag: [String: Any]?

        public var attributes: [String: Any]?

        public var shortDescription: [String: Any]?

        public var groupedAttributes: [String: Any]?

        public var description: [String: Any]?

        public var highlights: [[String: Any]]?

        public var isSet: Bool?

        public var brandUid: Int?

        public var itemCode: [String: Any]?

        public var hsnCode: Int?

        public var ratingCount: Int?

        public var media: [[String: Any]]?

        public var identifier: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var hasVariant: Bool?

        public var name: [String: Any]?

        public var rating: Double?

        public var imageNature: [String: Any]?

        public var outOfStock: Bool?

        public enum CodingKeys: String, CodingKey {
            case images

            case slug

            case templateTag = "template_tag"

            case attributes

            case shortDescription = "short_description"

            case groupedAttributes = "grouped_attributes"

            case description

            case highlights

            case isSet = "is_set"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case hsnCode = "hsn_code"

            case ratingCount = "rating_count"

            case media

            case identifier

            case countryOfOrigin = "country_of_origin"

            case hasVariant = "has_variant"

            case name

            case rating

            case imageNature = "image_nature"

            case outOfStock = "out_of_stock"
        }

        public init(attributes: [String: Any]? = nil, brandUid: Int? = nil, countryOfOrigin: [String: Any]? = nil, description: [String: Any]? = nil, groupedAttributes: [String: Any]? = nil, hasVariant: Bool? = nil, highlights: [[String: Any]]? = nil, hsnCode: Int? = nil, identifier: [String: Any]? = nil, images: [[String: Any]]? = nil, imageNature: [String: Any]? = nil, isSet: Bool? = nil, itemCode: [String: Any]? = nil, media: [[String: Any]]? = nil, name: [String: Any]? = nil, outOfStock: Bool? = nil, rating: Double? = nil, ratingCount: Int? = nil, shortDescription: [String: Any]? = nil, slug: [String: Any]? = nil, templateTag: [String: Any]? = nil) {
            self.images = images

            self.slug = slug

            self.templateTag = templateTag

            self.attributes = attributes

            self.shortDescription = shortDescription

            self.groupedAttributes = groupedAttributes

            self.description = description

            self.highlights = highlights

            self.isSet = isSet

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.hsnCode = hsnCode

            self.ratingCount = ratingCount

            self.media = media

            self.identifier = identifier

            self.countryOfOrigin = countryOfOrigin

            self.hasVariant = hasVariant

            self.name = name

            self.rating = rating

            self.imageNature = imageNature

            self.outOfStock = outOfStock
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                images = try container.decode([[String: Any]].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode([String: Any].self, forKey: .templateTag)

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
                shortDescription = try container.decode([String: Any].self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode([String: Any].self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([[String: Any]].self, forKey: .highlights)

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
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(Int.self, forKey: .hsnCode)

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
                media = try container.decode([[String: Any]].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

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
                name = try container.decode([String: Any].self, forKey: .name)

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
                imageNature = try container.decode([String: Any].self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
        }
    }
}
