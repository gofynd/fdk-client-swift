

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var id: String

        public var brandId: Int

        public var quantity: Int

        public var attributes: [String: Any]

        public var category: [String: Any]

        public var dimension: [String: Any]

        public var weight: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case brandId = "brand_id"

            case quantity

            case attributes

            case category

            case dimension

            case weight
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.id = id

            self.brandId = brandId

            self.quantity = quantity

            self.attributes = attributes

            self.category = category

            self.dimension = dimension

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            brandId = try container.decode(Int.self, forKey: .brandId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            category = try container.decode([String: Any].self, forKey: .category)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            weight = try container.decode([String: Any].self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
