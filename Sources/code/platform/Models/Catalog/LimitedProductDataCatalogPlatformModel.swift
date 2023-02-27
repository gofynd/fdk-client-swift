

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var slug: String?

        public var attributes: [String: Any]?

        public var countryOfOrigin: String?

        public var uid: Int?

        public var price: [String: Any]?

        public var identifier: [String: Any]?

        public var itemCode: String?

        public var shortDescription: String?

        public var sizes: [String]?

        public var images: [String]?

        public var quantity: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case attributes

            case countryOfOrigin = "country_of_origin"

            case uid

            case price

            case identifier

            case itemCode = "item_code"

            case shortDescription = "short_description"

            case sizes

            case images

            case quantity

            case name
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, itemCode: String? = nil, name: String? = nil, price: [String: Any]? = nil, quantity: Int? = nil, shortDescription: String? = nil, sizes: [String]? = nil, slug: String? = nil, uid: Int? = nil) {
            self.slug = slug

            self.attributes = attributes

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.price = price

            self.identifier = identifier

            self.itemCode = itemCode

            self.shortDescription = shortDescription

            self.sizes = sizes

            self.images = images

            self.quantity = quantity

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode([String: Any].self, forKey: .price)

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
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([String].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var slug: String?

        public var attributes: [String: Any]?

        public var countryOfOrigin: String?

        public var uid: Int?

        public var price: [String: Any]?

        public var identifier: [String: Any]?

        public var itemCode: String?

        public var shortDescription: String?

        public var sizes: [String]?

        public var images: [String]?

        public var quantity: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case attributes

            case countryOfOrigin = "country_of_origin"

            case uid

            case price

            case identifier

            case itemCode = "item_code"

            case shortDescription = "short_description"

            case sizes

            case images

            case quantity

            case name
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, itemCode: String? = nil, name: String? = nil, price: [String: Any]? = nil, quantity: Int? = nil, shortDescription: String? = nil, sizes: [String]? = nil, slug: String? = nil, uid: Int? = nil) {
            self.slug = slug

            self.attributes = attributes

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.price = price

            self.identifier = identifier

            self.itemCode = itemCode

            self.shortDescription = shortDescription

            self.sizes = sizes

            self.images = images

            self.quantity = quantity

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode([String: Any].self, forKey: .price)

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
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([String].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
