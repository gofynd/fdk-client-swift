

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var quantity: Int

        public var category: [String: Any]

        public var id: String

        public var brandId: Int

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case quantity

            case category

            case id = "_id"

            case brandId = "brand_id"

            case dimension

            case weight

            case attributes
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.quantity = quantity

            self.category = category

            self.id = id

            self.brandId = brandId

            self.dimension = dimension

            self.weight = weight

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            category = try container.decode([String: Any].self, forKey: .category)

            id = try container.decode(String.self, forKey: .id)

            brandId = try container.decode(Int.self, forKey: .brandId)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

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
        public var quantity: Int

        public var category: [String: Any]

        public var id: String

        public var brandId: Int

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case quantity

            case category

            case id = "_id"

            case brandId = "brand_id"

            case dimension

            case weight

            case attributes
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.quantity = quantity

            self.category = category

            self.id = id

            self.brandId = brandId

            self.dimension = dimension

            self.weight = weight

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            category = try container.decode([String: Any].self, forKey: .category)

            id = try container.decode(String.self, forKey: .id)

            brandId = try container.decode(Int.self, forKey: .brandId)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}
