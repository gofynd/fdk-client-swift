

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var attributes: [String: Any]

        public var brandId: Int

        public var id: String

        public var weight: [String: Any]

        public var quantity: Int

        public var dimension: [String: Any]

        public var category: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case brandId = "brand_id"

            case id = "_id"

            case weight

            case quantity

            case dimension

            case category
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.brandId = brandId

            self.id = id

            self.weight = weight

            self.quantity = quantity

            self.dimension = dimension

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)

            weight = try container.decode([String: Any].self, forKey: .weight)

            quantity = try container.decode(Int.self, forKey: .quantity)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            category = try container.decode([String: Any].self, forKey: .category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var attributes: [String: Any]

        public var brandId: Int

        public var id: String

        public var weight: [String: Any]

        public var quantity: Int

        public var dimension: [String: Any]

        public var category: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case brandId = "brand_id"

            case id = "_id"

            case weight

            case quantity

            case dimension

            case category
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.brandId = brandId

            self.id = id

            self.weight = weight

            self.quantity = quantity

            self.dimension = dimension

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)

            weight = try container.decode([String: Any].self, forKey: .weight)

            quantity = try container.decode(Int.self, forKey: .quantity)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            category = try container.decode([String: Any].self, forKey: .category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
