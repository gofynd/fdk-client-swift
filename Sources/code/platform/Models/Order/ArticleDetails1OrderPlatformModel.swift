

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var dimension: [String: Any]

        public var attributes: [String: Any]

        public var id: String

        public var category: [String: Any]

        public var weight: [String: Any]

        public var quantity: Int

        public var brandId: Int

        public enum CodingKeys: String, CodingKey {
            case dimension

            case attributes

            case id = "_id"

            case category

            case weight

            case quantity

            case brandId = "brand_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.dimension = dimension

            self.attributes = attributes

            self.id = id

            self.category = category

            self.weight = weight

            self.quantity = quantity

            self.brandId = brandId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            id = try container.decode(String.self, forKey: .id)

            category = try container.decode([String: Any].self, forKey: .category)

            weight = try container.decode([String: Any].self, forKey: .weight)

            quantity = try container.decode(Int.self, forKey: .quantity)

            brandId = try container.decode(Int.self, forKey: .brandId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(brandId, forKey: .brandId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var dimension: [String: Any]

        public var attributes: [String: Any]

        public var id: String

        public var category: [String: Any]

        public var weight: [String: Any]

        public var quantity: Int

        public var brandId: Int

        public enum CodingKeys: String, CodingKey {
            case dimension

            case attributes

            case id = "_id"

            case category

            case weight

            case quantity

            case brandId = "brand_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.dimension = dimension

            self.attributes = attributes

            self.id = id

            self.category = category

            self.weight = weight

            self.quantity = quantity

            self.brandId = brandId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            id = try container.decode(String.self, forKey: .id)

            category = try container.decode([String: Any].self, forKey: .category)

            weight = try container.decode([String: Any].self, forKey: .weight)

            quantity = try container.decode(Int.self, forKey: .quantity)

            brandId = try container.decode(Int.self, forKey: .brandId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(brandId, forKey: .brandId)
        }
    }
}
