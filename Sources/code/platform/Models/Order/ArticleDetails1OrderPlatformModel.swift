

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var category: [String: Any]

        public var brandId: Int

        public var quantity: Int

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case category

            case brandId = "brand_id"

            case quantity

            case dimension

            case weight

            case attributes

            case id = "_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.category = category

            self.brandId = brandId

            self.quantity = quantity

            self.dimension = dimension

            self.weight = weight

            self.attributes = attributes

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            category = try container.decode([String: Any].self, forKey: .category)

            brandId = try container.decode(Int.self, forKey: .brandId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var category: [String: Any]

        public var brandId: Int

        public var quantity: Int

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case category

            case brandId = "brand_id"

            case quantity

            case dimension

            case weight

            case attributes

            case id = "_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.category = category

            self.brandId = brandId

            self.quantity = quantity

            self.dimension = dimension

            self.weight = weight

            self.attributes = attributes

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            category = try container.decode([String: Any].self, forKey: .category)

            brandId = try container.decode(Int.self, forKey: .brandId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
