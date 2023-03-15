

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var attributes: [String: Any]

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public var brandId: Int

        public var id: String

        public var quantity: Int

        public var category: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case dimension

            case weight

            case brandId = "brand_id"

            case id = "_id"

            case quantity

            case category
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.dimension = dimension

            self.weight = weight

            self.brandId = brandId

            self.id = id

            self.quantity = quantity

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            category = try container.decode([String: Any].self, forKey: .category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

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

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public var brandId: Int

        public var id: String

        public var quantity: Int

        public var category: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case dimension

            case weight

            case brandId = "brand_id"

            case id = "_id"

            case quantity

            case category
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.dimension = dimension

            self.weight = weight

            self.brandId = brandId

            self.id = id

            self.quantity = quantity

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            category = try container.decode([String: Any].self, forKey: .category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
