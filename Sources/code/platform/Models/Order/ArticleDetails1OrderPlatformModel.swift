

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var attributes: [String: Any]

        public var category: [String: Any]

        public var brandId: Int

        public var quantity: Int

        public var id: String

        public var weight: [String: Any]

        public var dimension: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case category

            case brandId = "brand_id"

            case quantity

            case id = "_id"

            case weight

            case dimension
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.category = category

            self.brandId = brandId

            self.quantity = quantity

            self.id = id

            self.weight = weight

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            category = try container.decode([String: Any].self, forKey: .category)

            brandId = try container.decode(Int.self, forKey: .brandId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            weight = try container.decode([String: Any].self, forKey: .weight)

            dimension = try container.decode([String: Any].self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

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
        public var attributes: [String: Any]

        public var category: [String: Any]

        public var brandId: Int

        public var quantity: Int

        public var id: String

        public var weight: [String: Any]

        public var dimension: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case category

            case brandId = "brand_id"

            case quantity

            case id = "_id"

            case weight

            case dimension
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.category = category

            self.brandId = brandId

            self.quantity = quantity

            self.id = id

            self.weight = weight

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            category = try container.decode([String: Any].self, forKey: .category)

            brandId = try container.decode(Int.self, forKey: .brandId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            weight = try container.decode([String: Any].self, forKey: .weight)

            dimension = try container.decode([String: Any].self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
