

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductDetails
         Used By: Catalog
     */
    class ProductDetails: Codable {
        public var hasVariant: Bool?

        public var media: [[String: Any]]?

        public var images: [[String: Any]]?

        public var identifier: [String: Any]?

        public var brandUid: Int?

        public var outOfStock: Bool?

        public var description: String?

        public var templateTag: String?

        public var name: String?

        public var slug: String?

        public var attributes: [String: Any]?

        public var countryOfOrigin: String?

        public var groupedAttributes: [String: Any]?

        public var itemCode: String?

        public var shortDescription: String?

        public var ratingCount: Int?

        public var imageNature: String?

        public var rating: Double?

        public var hsnCode: Int?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case hasVariant = "has_variant"

            case media

            case images

            case identifier

            case brandUid = "brand_uid"

            case outOfStock = "out_of_stock"

            case description

            case templateTag = "template_tag"

            case name

            case slug

            case attributes

            case countryOfOrigin = "country_of_origin"

            case groupedAttributes = "grouped_attributes"

            case itemCode = "item_code"

            case shortDescription = "short_description"

            case ratingCount = "rating_count"

            case imageNature = "image_nature"

            case rating

            case hsnCode = "hsn_code"

            case isSet = "is_set"
        }

        public init(attributes: [String: Any]? = nil, brandUid: Int? = nil, countryOfOrigin: String? = nil, description: String? = nil, groupedAttributes: [String: Any]? = nil, hasVariant: Bool? = nil, hsnCode: Int? = nil, identifier: [String: Any]? = nil, images: [[String: Any]]? = nil, imageNature: String? = nil, isSet: Bool? = nil, itemCode: String? = nil, media: [[String: Any]]? = nil, name: String? = nil, outOfStock: Bool? = nil, rating: Double? = nil, ratingCount: Int? = nil, shortDescription: String? = nil, slug: String? = nil, templateTag: String? = nil) {
            self.hasVariant = hasVariant

            self.media = media

            self.images = images

            self.identifier = identifier

            self.brandUid = brandUid

            self.outOfStock = outOfStock

            self.description = description

            self.templateTag = templateTag

            self.name = name

            self.slug = slug

            self.attributes = attributes

            self.countryOfOrigin = countryOfOrigin

            self.groupedAttributes = groupedAttributes

            self.itemCode = itemCode

            self.shortDescription = shortDescription

            self.ratingCount = ratingCount

            self.imageNature = imageNature

            self.rating = rating

            self.hsnCode = hsnCode

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                images = try container.decode([[String: Any]].self, forKey: .images)

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
                brandUid = try container.decode(Int.self, forKey: .brandUid)

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

            do {
                description = try container.decode(String.self, forKey: .description)

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
                name = try container.decode(String.self, forKey: .name)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
                groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                hsnCode = try container.decode(Int.self, forKey: .hsnCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
