

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var category: [String: Any]

        public var id: String

        public var attributes: [String: Any]

        public var quantity: Int

        public var weight: [String: Any]

        public var dimension: [String: Any]

        public var brandId: Int

        public enum CodingKeys: String, CodingKey {
            case category

            case id = "_id"

            case attributes

            case quantity

            case weight

            case dimension

            case brandId = "brand_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.category = category

            self.id = id

            self.attributes = attributes

            self.quantity = quantity

            self.weight = weight

            self.dimension = dimension

            self.brandId = brandId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            category = try container.decode([String: Any].self, forKey: .category)

            id = try container.decode(String.self, forKey: .id)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            quantity = try container.decode(Int.self, forKey: .quantity)

            weight = try container.decode([String: Any].self, forKey: .weight)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            brandId = try container.decode(Int.self, forKey: .brandId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(brandId, forKey: .brandId)
        }
    }
}
