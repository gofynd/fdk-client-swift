

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var weight: [String: Any]

        public var quantity: Int

        public var brandId: Int

        public var category: [String: Any]

        public var dimension: [String: Any]

        public var id: String

        public var attributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case weight

            case quantity

            case brandId = "brand_id"

            case category

            case dimension

            case id = "_id"

            case attributes
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.weight = weight

            self.quantity = quantity

            self.brandId = brandId

            self.category = category

            self.dimension = dimension

            self.id = id

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode([String: Any].self, forKey: .weight)

            quantity = try container.decode(Int.self, forKey: .quantity)

            brandId = try container.decode(Int.self, forKey: .brandId)

            category = try container.decode([String: Any].self, forKey: .category)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            id = try container.decode(String.self, forKey: .id)

            attributes = try container.decode([String: Any].self, forKey: .attributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var weight: [String: Any]

        public var quantity: Int

        public var brandId: Int

        public var category: [String: Any]

        public var dimension: [String: Any]

        public var id: String

        public var attributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case weight

            case quantity

            case brandId = "brand_id"

            case category

            case dimension

            case id = "_id"

            case attributes
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.weight = weight

            self.quantity = quantity

            self.brandId = brandId

            self.category = category

            self.dimension = dimension

            self.id = id

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode([String: Any].self, forKey: .weight)

            quantity = try container.decode(Int.self, forKey: .quantity)

            brandId = try container.decode(Int.self, forKey: .brandId)

            category = try container.decode([String: Any].self, forKey: .category)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            id = try container.decode(String.self, forKey: .id)

            attributes = try container.decode([String: Any].self, forKey: .attributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}
