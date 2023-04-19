

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var countryOfOrigin: String?

        public var shortDescription: String?

        public var identifier: [String: Any]?

        public var sizes: [String]?

        public var quantity: Int?

        public var uid: Int?

        public var itemCode: String?

        public var attributes: [String: Any]?

        public var price: [String: Any]?

        public var slug: String?

        public var images: [String]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case shortDescription = "short_description"

            case identifier

            case sizes

            case quantity

            case uid

            case itemCode = "item_code"

            case attributes

            case price

            case slug

            case images

            case name
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, itemCode: String? = nil, name: String? = nil, price: [String: Any]? = nil, quantity: Int? = nil, shortDescription: String? = nil, sizes: [String]? = nil, slug: String? = nil, uid: Int? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.shortDescription = shortDescription

            self.identifier = identifier

            self.sizes = sizes

            self.quantity = quantity

            self.uid = uid

            self.itemCode = itemCode

            self.attributes = attributes

            self.price = price

            self.slug = slug

            self.images = images

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                price = try container.decode([String: Any].self, forKey: .price)

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
                images = try container.decode([String].self, forKey: .images)

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

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(images, forKey: .images)

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
        public var countryOfOrigin: String?

        public var shortDescription: String?

        public var identifier: [String: Any]?

        public var sizes: [String]?

        public var quantity: Int?

        public var uid: Int?

        public var itemCode: String?

        public var attributes: [String: Any]?

        public var price: [String: Any]?

        public var slug: String?

        public var images: [String]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case shortDescription = "short_description"

            case identifier

            case sizes

            case quantity

            case uid

            case itemCode = "item_code"

            case attributes

            case price

            case slug

            case images

            case name
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, itemCode: String? = nil, name: String? = nil, price: [String: Any]? = nil, quantity: Int? = nil, shortDescription: String? = nil, sizes: [String]? = nil, slug: String? = nil, uid: Int? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.shortDescription = shortDescription

            self.identifier = identifier

            self.sizes = sizes

            self.quantity = quantity

            self.uid = uid

            self.itemCode = itemCode

            self.attributes = attributes

            self.price = price

            self.slug = slug

            self.images = images

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                price = try container.decode([String: Any].self, forKey: .price)

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
                images = try container.decode([String].self, forKey: .images)

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

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
