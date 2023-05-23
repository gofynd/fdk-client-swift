

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var brandId: Int

        public var id: String

        public var category: [String: Any]

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public var quantity: Int

        public var dimension: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case id = "_id"

            case category

            case weight

            case attributes

            case quantity

            case dimension
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.brandId = brandId

            self.id = id

            self.category = category

            self.weight = weight

            self.attributes = attributes

            self.quantity = quantity

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)

            category = try container.decode([String: Any].self, forKey: .category)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            quantity = try container.decode(Int.self, forKey: .quantity)

            dimension = try container.decode([String: Any].self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var brandId: Int

        public var id: String

        public var category: [String: Any]

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public var quantity: Int

        public var dimension: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case id = "_id"

            case category

            case weight

            case attributes

            case quantity

            case dimension
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.brandId = brandId

            self.id = id

            self.category = category

            self.weight = weight

            self.attributes = attributes

            self.quantity = quantity

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)

            category = try container.decode([String: Any].self, forKey: .category)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            quantity = try container.decode(Int.self, forKey: .quantity)

            dimension = try container.decode([String: Any].self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
